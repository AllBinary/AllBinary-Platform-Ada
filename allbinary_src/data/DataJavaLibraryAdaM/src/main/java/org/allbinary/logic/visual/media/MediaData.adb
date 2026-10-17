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


package body org.allbinary.logic.visual.media.MediaData_Package is

   procedure Initialize_Fields (This : in out MediaData'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MediaData'Class; a_Name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := a_Name;
        This.extension := To_Unbounded_String (".") & This.name;
        This.type_Id := MediaTypeData_Package.getInstance.NOT_RESIZABLE_MEDIA;
        MediaData_Package.hashMap.put (a_Name, This'Unchecked_Access);
   end Initialize;

   function Create (a_Name : Unbounded_String) return MediaData_Access is
      This : constant MediaData_Access := new MediaData;
   begin
      MediaData_Package.Initialize (This.all, a_Name);
      return This;
   end Create;

   function getName (This : in out MediaData) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getType (This : in out MediaData) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function getExtension (This : in out MediaData) return Unbounded_String is
   begin
        return This.extension;
   end getExtension;

   function isConvertableTo (This : in out MediaData; mediaData : MediaData_Access) return Boolean is
   begin
        if ((This'Unchecked_Access) = (MediaDataFactory_Package.getInstance.GIF)) and then ((mediaData) = (MediaDataFactory_Package.getInstance.JPG)) then
            return True;
        end if;
        return False;
   end isConvertableTo;

   function toString (This : in out MediaData) return Unbounded_String is
   begin
        return This.getName;
   end toString;

   --  throws Exception
   function get (a_Name : Unbounded_String) return MediaData_Access is
      mediaData : MediaData_Access;
   begin
        mediaData := MediaData_Access (MediaData_Package.hashMap.get (a_Name));
        if (mediaData) /= (null) then
            return mediaData;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such MediaData")));
        end if;
   end get;

   function getDefault return MediaData_Access is
   begin
        return MediaDataFactory_Package.getInstance.JPG;
   end getDefault;

   function toHashMap return HashMap_Access is
   begin
        return MediaData_Package.hashMap;
   end toHashMap;

   procedure isConvertableTo (This : in out MediaData; mediaData : MediaData_Access) is
      Java_Result : constant Boolean := MediaData'Class (This).isConvertableTo (mediaData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isConvertableTo;

   procedure get (a_Name : Unbounded_String) is
      Java_Result : constant MediaData_Access := get (a_Name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;

end org.allbinary.logic.visual.media.MediaData_Package;


