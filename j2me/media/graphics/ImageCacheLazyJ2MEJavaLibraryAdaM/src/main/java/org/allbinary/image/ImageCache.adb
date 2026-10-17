--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--   
--  Generated Code Do Not Modify


package body org.allbinary.image.ImageCache_Package is

   procedure Initialize_Fields (This : in out ImageCache'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.concurrentImageLoadingProcessor := ConcurrentImageLoadingProcessor_Package.Create (This'Unchecked_Access);
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.resourceUtil := ResourceUtil_Package.getInstance;
      This.gameGlobalsFactory := GameGlobalsFactory_Package.getInstance;
      This.gdResources := GDResources_Package.getInstance;
      This.loadNowList := BasicArrayListD_Package.Create;
      This.loadSoonList := BasicArrayListD_Package.Create;
      This.loadList := BasicArrayListD_Package.Create;
      This.loadAfterList := BasicArrayListD_Package.Create;
      This.lock := SynchObject_Package.Create;
      This.firstTime := True;
      This.totalLoaded := 0;
      This.progressEnded := False;
      This.hasAnyLazyAnimationFactories := False;
      This.processor := FirstProcessor_Package.Create;
      This.endProcessor := Processor_Package.getInstance;
      This.LOAD_IMAGE_FOR_ANIMATION := To_Unbounded_String ("Load Image Animation");
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCache'Class) is
   begin
      ImageCacheBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageCache_Access is
      This : constant ImageCache_Access := new ImageCache;
   begin
      ImageCache_Package.Initialize (This.all);
      return This;
   end Create;

   procedure firstProcess (This : in out ImageCache) is
      logUtil : LogUtil_Access;
      isHTML : Boolean;
   begin
        logUtil := LogUtil_Package.getInstance;
        isHTML := J2MEUtil_Package.isHTML;
        if isHTML then
            This.processor := Processor_Package.getInstance;
            This.endProcessor := HTMLEndProcessor_Package.Create;
        else
            This.processor := NotHTMLProcessor_Package.Create;
            This.endProcessor := NotHTMLEndProcessor_Package.Create;
            begin
                This.runTask;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.putF (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.END_METHOD_NAME);
                    end;
            end;
        end if;
   end firstProcess;

   procedure addListener (This : in out ImageCache; renderer : Java_Object_Access) is
   begin
        null;
   end addListener;

   --  throws Exception
   procedure waitForLoadNow (This : in out ImageCache) is
      abToGBUtil : ABToGBUtil_Access;
      abCanvas : AllBinaryGameCanvas_Access;
   begin
        if This.firstTime then
            abToGBUtil := ABToGBUtil_Package.getInstance;
            abCanvas := AllBinaryGameCanvas_Access (abToGBUtil.abCanvas);
            while ((This.loadNowList.isEmpty) and then (((not (abCanvas.isInitialized)) or else (((abCanvas.isInitialized) and then (This.hasAnyLazyAnimationFactories)))))) and then (not (This.progressEnded)) loop
                Java_Sleep (120);
            end loop;
            This.firstTime := False;
        end if;
   end waitForLoadNow;

   --  throws Exception
   procedure loadImageForAnimation (This : in out ImageCache) is
      lazyImageRotationAnimation : LazyImageRotationAnimation_Access;
      list : BasicArrayList_Access;
      size : Integer;
      progressCanvas : ProgressCanvas_Access;
      isHTML : Boolean;
   begin
        lazyImageRotationAnimation := null;
        begin  --  synchronized
            if This.loadNowList.isEmpty then
                This.endProcessor.process;
                if This.loadSoonList.isEmpty then
                    if This.loadAfterList.isEmpty then
                        if This.firstTime then
                            null;
                        elsif This.gameGlobalsFactory.newCanvas then
                            null;
                        else
                            This.loadNextImage;
                        end if;
                        return;
                    else
                        lazyImageRotationAnimation := LazyImageRotationAnimation_Access (This.loadAfterList.get (0));
                        if This.loadImageForLazyAnimation (lazyImageRotationAnimation) then
                            This.loadAfterList.remove (lazyImageRotationAnimation);
                        end if;
                    end if;
                else
                    lazyImageRotationAnimation := LazyImageRotationAnimation_Access (This.loadSoonList.get (0));
                    if This.loadImageForLazyAnimation (lazyImageRotationAnimation) then
                        This.loadSoonList.remove (lazyImageRotationAnimation);
                    end if;
                end if;
                return;
            end if;
            lazyImageRotationAnimation := LazyImageRotationAnimation_Access (This.loadNowList.get (0));
        end;
        if This.loadImageForLazyAnimation (lazyImageRotationAnimation) then
            begin  --  synchronized
                This.loadNowList.remove (lazyImageRotationAnimation);
            end;
            if (lazyImageRotationAnimation.layoutIndex) /= (0) then
                list := This.getAssociated (lazyImageRotationAnimation);
                begin  --  synchronized
                    size := list.size;
                    if (size) > (0) then
                        This.loadSoonList.addAllList (list);
                    end if;
                end;
            end if;
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            isHTML := J2MEUtil_Package.isHTML;
            if (This.loadNowList.isEmpty) and then (((not (isHTML)) or else (This.firstTime))) then
                progressCanvas.endFromInitialLazyLoadingComplete;
            else
                if ((This.totalLoaded) rem (10)) = (0) then
                    progressCanvas.addNormalPortion (1, This.LOAD_IMAGE_FOR_ANIMATION);
                end if;
            end if;
        end if;
   end loadImageForAnimation;

   --  throws Exception
   procedure loadImages (This : in out ImageCache) is
   begin
        while (not (This.loadList.isEmpty)) or else (not (This.loadNowList.isEmpty)) loop
            This.loadImageForAnimations;
            This.loadNextImage;
        end loop;
   end loadImages;

   --  throws Exception
   procedure loadImageForAnimations (This : in out ImageCache) is
   begin
        while not (This.loadNowList.isEmpty) loop
            This.loadImageForAnimation;
        end loop;
   end loadImageForAnimations;

   --  throws Exception
   procedure loadRemainingAnimations (This : in out ImageCache) is
      lazyImageRotationAnimation : LazyImageRotationAnimation_Access;
   begin
        while (not (This.loadAfterList.isEmpty)) or else (not (This.loadNowList.isEmpty)) loop
            while not (This.loadNowList.isEmpty) loop
                This.loadImageForAnimation;
            end loop;
            lazyImageRotationAnimation := null;
            begin  --  synchronized
                if not (This.loadAfterList.isEmpty) then
                    lazyImageRotationAnimation := LazyImageRotationAnimation_Access (This.loadAfterList.removeAt (0));
                end if;
            end;
            if (lazyImageRotationAnimation) /= (null) then
                This.loadImageForLazyAnimation (lazyImageRotationAnimation);
            end if;
        end loop;
   end loadRemainingAnimations;

   --  throws Exception
   function loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) return Boolean is
      image : Image_Access;
   begin
        image := lazyImageRotationAnimation.animationInterfaceFactoryInterface.getImage;
        if This.loadImage (image) then
            lazyImageRotationAnimation.setRealAnimation;
            return True;
        end if;
        return False;
   end loadImageForLazyAnimation;

   --  throws Exception
   procedure loadNextImage (This : in out ImageCache) is
      image : Image_Access;
   begin
        image := null;
        begin  --  synchronized
            if (This.loadList.size) = (0) then
                return;
            end if;
            image := Image_Access (This.loadList.removeAt (0));
        end;
        This.loadImage (image);
   end loadNextImage;

   --  throws Exception
   function loadImage (This : in out ImageCache; image : Image_Access) return Boolean is
      key : Unbounded_String;
      image2 : Image_Access;
   begin
        if image.isReady then
            return True;
        else
            if (image.getImage) /= (null) then
                if image.setReady then
                    if image.isReady then
                        This.totalLoaded := This.totalLoaded + 1;
                        return True;
                    end if;
                end if;
            else
                key := image.getName;
                image2 := This.creatImage (key);
                if image2.isReady then
                    This.init (image, image2);
                    return True;
                else
                    image.setImage (image2.getImage);
                end if;
            end if;
        end if;
        return False;
   end loadImage;

   --  throws Exception
   procedure init (This : in out ImageCache; image : Image_Access; image2 : Image_Access) is
   begin
        image.init (image2.getImage);
   end init;

   --  throws Exception
   function creatImage (This : in out ImageCache; key : Unbounded_String) return Image_Access is
      inputStream : InputStream_Access;
      image : Image_Access;
   begin
        inputStream := This.resourceUtil.getResourceAsStream (key);
        image := ImageFactory_Package.getInstance.createImageFromInputStream (inputStream);
        image.setName (key);
        return image;
   end creatImage;

   --  throws Exception
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
      foundIndex : Integer;
      image : Image_Access;
   begin
        foundIndex := This.getIndexWH (width, height);
        image := This.getFromAvailable (foundIndex, width, height);
        if (image) = (NullImage_Package.NULL_IMAGE) then
            This.volume := (This.volume) + ((width) * (height));
            if (This.volume) > (32000) then
                This.tsUtil.gc;
                This.volume := 0;
            end if;
            image := This.createImage (caller, width, height);
            if (This.nextIndex) > ((This.widths'Length) - (1)) then
                if (foundIndex) = (-(1)) then
                    foundIndex := This.nextIndex;
                    This.widths (This.nextIndex) := width;
                    This.heights (This.nextIndex) := height;
                    This.nextIndex := This.nextIndex + 1;
                end if;
                This.listOfList (foundIndex).add (image);
            end if;
        end if;
        return image;
   end get;

   --  throws Exception
   function getWithKey (This : in out ImageCache; key : Java_Object_Access) return Image_Access is
      image : Image_Access;
      inputStream : InputStream_Access;
   begin
        image := This.getImage (key);
        if (image) = (NullImage_Package.NULL_IMAGE) then
            inputStream := null;
            begin
                image := This.createImageFromInputStream (key, inputStream);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (To_Unbounded_String ("Exception: Trying Again After GC"), This'Unchecked_Access, This.commonStrings.GET, e);
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("InputStream: ")).append (StringUtil_Package.getInstance.toString (inputStream)).toString, This'Unchecked_Access, This.commonStrings.GET);
                This.tsUtil.gc;
                This.tsUtil.gc;
                This.logUtil.putF (Memory_Package.getInfo, This'Unchecked_Access, This.commonStrings.GET);
                Java_Sleep (100);
                image := This.createImageFromInputStream (key, inputStream);
                    end;
            end;
            This.hashtable.put (key, image);
        end if;
        return image;
   end getWithKey;

   function getIndex (This : in out ImageCache; key : Java_Object_Access) return Integer is
      gdResources : GDResources_Access;
      resourceStringArray : Unbounded_String_Array_Access;
      size : Integer;
      index : Integer;
   begin
        gdResources := GDResources_Package.getInstance;
        resourceStringArray := gdResources.resourceStringArray;
        size := resourceStringArray'Length;
        for index in 0 .. (size) - 1 loop
            if (resourceStringArray (index)) = (key) then
                return index;
            end if;
        end loop;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("unable to find key: ")).append (StringUtil_Package.getInstance.toString (key)).toString, This'Unchecked_Access, This.commonStrings.RUN);
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getIndex;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageCache; key : Java_Object_Access; inputStream : InputStream_Access) return Image_Access is
      gdLazyResources : GDLazyResources_Access;
      resourceStringArray : Unbounded_String_Array_Access;
      size : Integer;
      index : Integer;
      width : Integer;
      height : Integer;
      image : Image_Access;
   begin
        gdLazyResources := GDLazyResources_Package.getInstance;
        resourceStringArray := gdLazyResources.requiredResourcesBeforeLoadingArray;
        size := resourceStringArray'Length;
        for index in 0 .. (size) - 1 loop
            if (key) = (resourceStringArray (index)) then
                return This.creatImage (Unbounded_String (key));
            end if;
        end loop;
        This.runTask;
        index := This.getIndex (key);
        width := gdLazyResources.imageResourceWidthArray (index);
        height := gdLazyResources.imageResourceHeightArray (index);
        image := This.createImageLater (Unbounded_String (key), width, height);
        begin  --  synchronized
            This.loadList.add (image);
        end;
        return image;
   end createImageFromInputStream;

   --  throws Exception
   function createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer) return Image_Access is
   begin
        return Image_Package.createImageLater (key, width, height);
   end createImageLater;

   function getAssociated (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      lazyImageRotationAnimation2 : LazyImageRotationAnimation_Access;
      size : Integer;
      index : Integer;
      size2 : Integer;
   begin
        list := BasicArrayListD_Package.Create;
        begin  --  synchronized
            lazyImageRotationAnimation2 := null;
            size := This.loadAfterList.size;
            for index in 0 .. (size) - 1 loop
                lazyImageRotationAnimation2 := LazyImageRotationAnimation_Access (This.loadAfterList.get (index));
                if (lazyImageRotationAnimation2.instanceId) = (lazyImageRotationAnimation.instanceId) then
                    list.add (lazyImageRotationAnimation2);
                end if;
            end loop;
            size2 := list.size;
            for index in 0 .. (size2) - 1 loop
                This.loadAfterList.remove (list.get (index));
            end loop;
        end;
        return list;
   end getAssociated;

   procedure add (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) is
   begin
        begin  --  synchronized
            This.loadAfterList.add (lazyImageRotationAnimation);
        end;
   end add;

   --  throws Exception
   procedure insertFirst (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) is
   begin
        if This.loadNowList.contains (lazyImageRotationAnimation) then
            null;
        else
            begin  --  synchronized
                This.loadNowList.add (lazyImageRotationAnimation);
                This.loadAfterList.remove (lazyImageRotationAnimation);
            end;
        end if;
        This.runTask;
   end insertFirst;

   procedure progressEnded (This : in out ImageCache) is
   begin
        This.progressEnded := True;
   end progressEnded;

   --  throws Exception
   procedure runTask (This : in out ImageCache) is
   begin
        This.processor.process;
   end runTask;

   procedure initProgress (This : in out ImageCache) is
   begin
        if This.firstTime then
            This.firstTime := False;
        end if;
   end initProgress;

   function isLazy (This : in out ImageCache) return Boolean is
   begin
        return True;
   end isLazy;

   procedure loadImageForLazyAnimation (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) is
      Java_Result : constant Boolean := ImageCache'Class (This).loadImageForLazyAnimation (lazyImageRotationAnimation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadImageForLazyAnimation;

   procedure loadImage (This : in out ImageCache; image : Image_Access) is
      Java_Result : constant Boolean := ImageCache'Class (This).loadImage (image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadImage;

   procedure creatImage (This : in out ImageCache; key : Unbounded_String) is
      Java_Result : constant Image_Access := ImageCache'Class (This).creatImage (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end creatImage;

   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCache'Class (This).get (caller, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getWithKey (This : in out ImageCache; key : Java_Object_Access) is
      Java_Result : constant Image_Access := ImageCache'Class (This).getWithKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithKey;

   procedure getIndex (This : in out ImageCache; key : Java_Object_Access) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

   procedure createImageFromInputStream (This : in out ImageCache; key : Java_Object_Access; inputStream : InputStream_Access) is
      Java_Result : constant Image_Access := ImageCache'Class (This).createImageFromInputStream (key, inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

   procedure createImageLater (This : in out ImageCache; key : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCache'Class (This).createImageLater (key, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageLater;

   procedure getAssociated (This : in out ImageCache; lazyImageRotationAnimation : LazyImageRotationAnimation_Access) is
      Java_Result : constant BasicArrayList_Access := ImageCache'Class (This).getAssociated (lazyImageRotationAnimation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAssociated;

begin
   null;
   NULL_IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCache_Package;


package body org.allbinary.image.NotHTMLProcessor_Package is

   procedure Initialize_Fields (This : in out NotHTMLProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NotHTMLProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NotHTMLProcessor_Access is
      This : constant NotHTMLProcessor_Access := new NotHTMLProcessor;
   begin
      NotHTMLProcessor_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure process (This : in out NotHTMLProcessor) is
   begin
            This.concurrentImageLoadingProcessor.runTask;
   end process;

end org.allbinary.image.NotHTMLProcessor_Package;


package body org.allbinary.image.NotHTMLEndProcessor_Package is

   procedure Initialize_Fields (This : in out NotHTMLEndProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NotHTMLEndProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NotHTMLEndProcessor_Access is
      This : constant NotHTMLEndProcessor_Access := new NotHTMLEndProcessor;
   begin
      NotHTMLEndProcessor_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure process (This : in out NotHTMLEndProcessor) is
      progressCanvas : ProgressCanvas_Access;
   begin
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.endIfPaintedSinceStart;
   end process;

end org.allbinary.image.NotHTMLEndProcessor_Package;


package body org.allbinary.image.HTMLEndProcessor_Package is

   procedure Initialize_Fields (This : in out HTMLEndProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HTMLEndProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return HTMLEndProcessor_Access is
      This : constant HTMLEndProcessor_Access := new HTMLEndProcessor;
   begin
      HTMLEndProcessor_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure process (This : in out HTMLEndProcessor) is
      size : Integer;
      progressCanvas : ProgressCanvas_Access;
   begin
            size := This.gdResources.currentLayoutRequiredTotal;
            if (size) = (0) then
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                progressCanvas.endIfPaintedSinceStart;
            elsif (This.totalLoaded) > ((size) / (12)) then
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                progressCanvas.endIfPaintedSinceStart;
                This.endProcessor := NotHTMLEndProcessor_Package.Create;
            end if;
   end process;

end org.allbinary.image.HTMLEndProcessor_Package;


package body org.allbinary.image.FirstProcessor_Package is

   procedure Initialize_Fields (This : in out FirstProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FirstProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return FirstProcessor_Access is
      This : constant FirstProcessor_Access := new FirstProcessor;
   begin
      FirstProcessor_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure process (This : in out FirstProcessor) is
   begin
            This.firstProcess;
   end process;

end org.allbinary.image.FirstProcessor_Package;


