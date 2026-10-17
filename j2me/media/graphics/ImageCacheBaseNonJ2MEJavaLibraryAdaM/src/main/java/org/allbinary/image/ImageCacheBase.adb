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


package body org.allbinary.image.ImageCacheBase_Package is

   procedure Initialize_Fields (This : in out ImageCacheBase'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageFactory := ImageFactory_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.SIZE := 128;
      This.widths := new Integer_Array'(0 .. (This.SIZE) - 1 => 0);
      This.heights := new Integer_Array'(0 .. (This.SIZE) - 1 => 0);
      This.listOfList := new BasicArrayList_Access_Array'(0 .. (This.SIZE) - 1 => null);
      This.availableListOfList := new BasicArrayList_Access_Array'(0 .. (This.SIZE) - 1 => null);
      This.volume := 0;
      This.nextIndex := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCacheBase'Class) is
      index : Integer;
   begin
      Initialize_Fields (This);
        for index in reverse 0 .. (This.listOfList'Length) - (1) loop
            This.listOfList (index) := BasicArrayListD_Package.Create;
        end loop;
        for index in reverse 0 .. (This.availableListOfList'Length) - (1) loop
            This.availableListOfList (index) := BasicArrayListD_Package.Create;
        end loop;
   end Initialize;

   function Create return ImageCacheBase_Access is
      This : constant ImageCacheBase_Access := new ImageCacheBase;
   begin
      ImageCacheBase_Package.Initialize (This.all);
      return This;
   end Create;

   function getImage (This : in out ImageCacheBase; resourceId_Param : access Java_Object'Class) return Image_Access is
      resourceId : Java_Object_Access := Java_Object_Access (resourceId_Param);
      imageCanBeNull : Java_Object_Access;
   begin
        imageCanBeNull := This.hashtable.get (resourceId);
        if (imageCanBeNull) = (null) then
            return NullImage_Package.NULL_IMAGE;
        end if;
        return Image_Access (imageCanBeNull);
   end getImage;

   procedure releaseAll (This : in out ImageCacheBase) is
      index : Integer;
   begin
        for index in reverse 0 .. (This.listOfList'Length) - (1) loop
            This.availableListOfList (index).clear;
            This.availableListOfList (index).addAllList (This.listOfList (index));
        end loop;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("ImageCache: ")).append (This.toString).toString, ImageCacheBase_Access'(This'Unchecked_Access), To_Unbounded_String ("releaseAll"));
   end releaseAll;

   function getIndexWH (This : in out ImageCacheBase; width : Integer; height : Integer) return Integer is
      foundIndex : Integer;
      size_Case : Integer;
      index : Integer;
   begin
        foundIndex := -(1);
        size_Case := This.widths'Length;
        for index in 0 .. (size_Case) - 1 loop
            if ((This.widths (index)) = (width)) and then ((This.heights (index)) = (height)) then
                foundIndex := index;
                return foundIndex;
            end if;
        end loop;
        return foundIndex;
   end getIndexWH;

   function getFromAvailable (This : in out ImageCacheBase; foundIndex : Integer; width : Integer; height : Integer) return Image_Access is
      list : BasicArrayList_Access;
   begin
        if (foundIndex) /= (-(1)) then
            if (This.availableListOfList (foundIndex).size_Case) > (0) then
                list := This.availableListOfList (foundIndex);
                return Image_Access (list.removeAt ((list.size_Case) - (1)));
            end if;
        end if;
        return NullImage_Package.NULL_IMAGE;
   end getFromAvailable;

   --  throws Exception
   function get (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end get;

   --  throws Exception
   function getWithKey (This : in out ImageCacheBase; key_Param : access Java_Object'Class) return Image_Access is
      key : Java_Object_Access := Java_Object_Access (key_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWithKey;

   --  throws Exception
   function createImage (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) return Image_Access is
   begin
        return This.imageFactory.createImage (caller, width, height);
   end createImage;

   --  throws Exception
   function createImageFromInputStream (This : in out ImageCacheBase; key_Param : access Java_Object'Class; inputStream_Param : access InputStream'Class) return Image_Access is
      key : Java_Object_Access := Java_Object_Access (key_Param);
      inputStream : InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        return This.imageFactory.createImageFromInputStream (key, inputStream);
   end createImageFromInputStream;

   function toString (This : in out ImageCacheBase) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      width : Integer;
      height : Integer;
      total : Integer;
      totalAvailable : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        for index in reverse 0 .. (This.nextIndex) - (1) loop
            width := This.widths (index);
            height := This.heights (index);
            total := This.listOfList (index).size_Case;
            totalAvailable := This.availableListOfList (index).size_Case;
            stringBuffer.append (To_Unbounded_String (" w: "));
            stringBuffer.appendint (width);
            stringBuffer.append (To_Unbounded_String (" h: "));
            stringBuffer.appendint (height);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            stringBuffer.append (CommonLabels_Package.getInstance.TOTAL_LABEL);
            stringBuffer.appendint (total);
            stringBuffer.append (To_Unbounded_String (" available: "));
            stringBuffer.appendint (totalAvailable);
        end loop;
        return stringBuffer.toString;
   end toString;

   function getHashtableP (This : in out ImageCacheBase) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtableP;

   procedure init (This : in out ImageCacheBase; image_Param : access Image'Class) is
      image : Image_Access := Image_Access (image_Param);
   begin
        null;
   end init;

   procedure initProgress (This : in out ImageCacheBase) is
   begin
        null;
   end initProgress;

   procedure getImage (This : in out ImageCacheBase; resourceId_Param : access Java_Object'Class) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).getImage (resourceId_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getIndexWH (This : in out ImageCacheBase; width : Integer; height : Integer) is
      Java_Result : constant Integer := ImageCacheBase'Class (This).getIndexWH (width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndexWH;

   procedure getFromAvailable (This : in out ImageCacheBase; foundIndex : Integer; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).getFromAvailable (foundIndex, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFromAvailable;

   procedure get (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).get (caller, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getWithKey (This : in out ImageCacheBase; key_Param : access Java_Object'Class) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).getWithKey (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithKey;

   procedure createImage (This : in out ImageCacheBase; caller : Unbounded_String; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).createImage (caller, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageFromInputStream (This : in out ImageCacheBase; key_Param : access Java_Object'Class; inputStream_Param : access InputStream'Class) is
      Java_Result : constant Image_Access := ImageCacheBase'Class (This).createImageFromInputStream (key_Param, inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageFromInputStream;

end org.allbinary.image.ImageCacheBase_Package;


