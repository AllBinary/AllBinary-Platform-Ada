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
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
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
      Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out ImageCache; renderer : Java_Object_Access) is
   begin
        null;
   end addListener;

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
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
      foundIndex : Integer;
      image : Image_Access;
      widths : Integer_Array_Access;
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
            widths := This.widths;
            if (This.nextIndex) > ((widths'Length) - (1)) then
                if (foundIndex) = (-(1)) then
                    foundIndex := This.nextIndex;
                    widths (This.nextIndex) := width;
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
      resourceUtil : ResourceUtil_Access;
      resourceInputStream : InputStream_Access;
   begin
        image := This.getImage (key);
        if (image) = (NullImage_Package.NULL_IMAGE) then
            resourceUtil := ResourceUtil_Package.getInstance;
            resourceInputStream := resourceUtil.getResourceAsStream (Unbounded_String (key));
            if (resourceInputStream) = (null) then
                Java_Throw (Java_New_Exception ("RuntimeException", StringMaker_Package.Create.append (To_Unbounded_String ("Image resource is not available for key: ")).append (StringUtil_Package.getInstance.toString (key)).toString));
            end if;
            begin
                image := This.createImageFromInputStream (key, resourceInputStream);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (To_Unbounded_String ("Exception: Trying Again After GC"), This'Unchecked_Access, This.commonStrings.GET, e);
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("InputStream: ")).append (StringUtil_Package.getInstance.toString (resourceInputStream)).toString, This'Unchecked_Access, This.commonStrings.GET);
                This.tsUtil.gc;
                This.tsUtil.gc;
                This.logUtil.putF (Memory_Package.getInfo, This'Unchecked_Access, This.commonStrings.GET);
                Java_Sleep (100);
                image := This.createImageFromInputStream (key, resourceInputStream);
                    end;
            end;
            if J2MEUtil_Package.isHTML then
                null;
            else
                resourceInputStream.close;
            end if;
            This.hashtable.put (key, image);
        end if;
        return image;
   end getWithKey;

   --  throws Exception
   procedure loadImageForAnimation (This : in out ImageCache) is
   begin
        null;
   end loadImageForAnimation;

   procedure progressEnded (This : in out ImageCache) is
   begin
        null;
   end progressEnded;

   procedure runTask (This : in out ImageCache) is
   begin
        null;
   end runTask;

   function isLazy (This : in out ImageCache) return Boolean is
   begin
        return False;
   end isLazy;

   procedure getIndex (This : in out ImageCache; key : Java_Object_Access) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

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

   procedure isLazy (This : in out ImageCache) is
      Java_Result : constant Boolean := ImageCache'Class (This).isLazy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLazy;

begin
   null;
   NULL_IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCache_Package;


