-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.media.image.ImageWaitCompleteUtil_Package is

   procedure Initialize_Fields (This : in out ImageWaitCompleteUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (18000);
      This.allTimeDelayHelper := TimeDelayHelper_Package.Create (120000);
   end Initialize_Fields;


   procedure Initialize (This : in out ImageWaitCompleteUtil'Class) is
   begin
      ImageCompleteUtil_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageWaitCompleteUtil_Access is
      This : constant ImageWaitCompleteUtil_Access := new ImageWaitCompleteUtil;
   begin
      ImageWaitCompleteUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure waitForImage (This : in out ImageWaitCompleteUtil; image_Param : access Image'Class; name : Unbounded_String) is
      image : Image_Access := Image_Access (image_Param);
   begin
        This.timeDelayHelper.setStartTimeTNT;
        This.waitForATime (image, name, This.timeDelayHelper);
   end waitForImage;

   --  throws Exception
   procedure handleTimeout (This : in out ImageWaitCompleteUtil; name : Unbounded_String) is
   begin
        if This.timeDelayHelper.isTimeTNT then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
        end if;
   end handleTimeout;

   --  throws Exception
   procedure waitForATime (This : in out ImageWaitCompleteUtil; image_Param : access Image'Class; name : Unbounded_String; timeDelayHelper_Param : access TimeDelayHelper'Class) is
      image : Image_Access := Image_Access (image_Param);
      timeDelayHelper : TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      playnImage : PlaynImage_Access;
      playnCoreImage : CoreImage_Access;
   begin
        playnImage := PlaynImage_Access (image);
        playnCoreImage := CoreImage_Access (playnImage.getImage);
        while (not (playnCoreImage.isReady)) or else (((playnCoreImage.width) + (playnCoreImage.height)) <= (0)) loop
            if timeDelayHelper.isTimeTNT then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ") & name));
            end if;
        end loop;
        if not (image.isReady) then
            image.init (image.getImage);
        end if;
   end waitForATime;

   --  throws Exception
   procedure waitForAll (This : in out ImageWaitCompleteUtil) is
      hashtable : ABHashtable_Access;
      objectArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        This.allTimeDelayHelper.setStartTimeTNT;
        hashtable := GameFeatureImageCacheFactory_Package.getInstance.getHashtableP;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        size := objectArray'Length;
        PreLogUtil_Package.put (To_Unbounded_String ("Image Total: ") & Java_Image (size), ImageWaitCompleteUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("waitForAll"));
        for index in 0 .. (size) - 1 loop
            This.waitForATime (Image_Access (hashtable.get (objectArray (index))), Unbounded_String (objectArray (index)), This.allTimeDelayHelper);
        end loop;
   end waitForAll;

end org.allbinary.media.image.ImageWaitCompleteUtil_Package;


