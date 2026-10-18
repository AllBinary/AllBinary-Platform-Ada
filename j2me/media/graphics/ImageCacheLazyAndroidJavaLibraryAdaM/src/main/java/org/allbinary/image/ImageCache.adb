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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package; use org.allbinary.game.gd.resource.GDResources_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;

package body org.allbinary.image.ImageCache_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GDResources_Package renames Standard.org.allbinary.game.gd.resource.GDResources_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;
   procedure Initialize_Fields (This : in out ImageCache'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.systemWrapper := ABSystemWrapper_Package.getInstance;
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
      ImageCache_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
      foundIndex : Integer;
      image : Image_Access;
   begin
        foundIndex := ImageCache'Class (This).getIndexWH (width, height);
        image := ImageCache'Class (This).getFromAvailable (foundIndex, width, height);
        if (image) = (NullImage_Package.NULL_IMAGE) then
            This.volume := (This.volume) + ((width) * (height));
            if (This.volume) > (32000) then
                This.tsUtil.gc;
                This.volume := 0;
            end if;
            image := ImageCache'Class (This).createImage (caller, width, height);
            if (foundIndex) = (-(1)) then
                foundIndex := This.nextIndex;
                This.widths (This.nextIndex) := width;
                This.heights (This.nextIndex) := height;
                This.nextIndex := This.nextIndex + 1;
            end if;
            This.listOfList (foundIndex).add (image);
        end if;
        return image;
   end get;

   --  throws Exception
   function get (This : in out ImageCache; key_Param : access Java_Object'Class) return Image_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      resourceUtil : ResourceUtil_Access;
      resourceId : Integer;
      image : Image_Access;
      inputStream : InputStream_Access;
   begin
        resourceUtil := ResourceUtil_Package.getInstance;
        resourceId := resourceUtil.getResourceId (Java_Unbox (key));
        image := ImageCache'Class (This).getImage (resourceId);
        if (image) = (NullImage_Package.NULL_IMAGE) then
            inputStream := null;
            begin
                This.logUtil.putF (Memory_Package.getInfo, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET);
                image := ImageCache'Class (This).createImage (key, inputStream);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (To_Unbounded_String ("Exception: Trying Again After GC"), ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("InputStream: ")).append (inputStream.toString).toString, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET);
                This.tsUtil.gc;
                This.tsUtil.gc;
                This.logUtil.putF (Memory_Package.getInfo, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.GET);
                Java_Sleep (100);
                image := ImageCache'Class (This).createImage (key, inputStream);
                    end;
            end;
            This.hashtable.put (resourceId, image);
        end if;
        return image;
   end get;

   function getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) return Integer is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
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
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("unable to find key: ")).append (StringUtil_Package.getInstance.toString (key)).toString, ImageCache_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getIndex;

   --  throws Exception
   function createImage (This : in out ImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) return Image_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return Image_Package.createImageLater (Java_Unbox (key), -(1), -(1));
   end createImage;

   function isLazy (This : in out ImageCache) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isLazy;

   procedure get (This : in out ImageCache; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCache'Class (This).get (caller => caller, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out ImageCache; key_Param : access Java_Object'Class) is
      Java_Result : constant Image_Access := ImageCache'Class (This).get (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getIndex (This : in out ImageCache; key_Param : access Java_Object'Class) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (key_Param => key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

   procedure createImage (This : in out ImageCache; key_Param : access Java_Object'Class; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant Image_Access := ImageCache'Class (This).createImage (key_Param => key_Param, inputStream_Param => inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   function get (This : in out ImageCache; Value : Unbounded_String) return Image_Access is
   begin
      return ImageCache'Class (This).get (Java_Box (Value));
   end get;

   procedure get (This : in out ImageCache; Value : Unbounded_String) is
      Java_Result : constant Image_Access := ImageCache'Class (This).get (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   function getIndex (This : in out ImageCache; Value : Unbounded_String) return Integer is
   begin
      return ImageCache'Class (This).getIndex (Java_Box (Value));
   end getIndex;

   procedure getIndex (This : in out ImageCache; Value : Unbounded_String) is
      Java_Result : constant Integer := ImageCache'Class (This).getIndex (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndex;

begin
   null;
   NULL_IMAGE_CACHE := ImageCache_Package.Create;

end org.allbinary.image.ImageCache_Package;


