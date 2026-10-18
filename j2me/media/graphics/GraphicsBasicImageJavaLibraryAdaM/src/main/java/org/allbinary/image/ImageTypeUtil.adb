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


package body org.allbinary.image.ImageTypeUtil_Package is

   procedure Initialize_Fields (This : in out ImageTypeUtil'Class) is
   begin
      null;
      This.PNG := To_Unbounded_String ("png");
      This.JPG := To_Unbounded_String ("jpg");
      This.GIF := To_Unbounded_String ("gif");
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageTypeUtil'Class) is
   begin
      Initialize_Fields (This);
        This.list.add (This.JPG);
        This.list.add (This.GIF);
        This.list.add (This.PNG);
   end Initialize;

   function Create return ImageTypeUtil_Access is
      This : constant ImageTypeUtil_Access := new ImageTypeUtil;
   begin
      ImageTypeUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String) return Boolean is
      mediaFileType : Unbounded_String := mediaFileType_Param;
      name : Unbounded_String;
      index : Integer;
   begin
        mediaFileType := Translate (mediaFileType, Ada.Strings.Maps.Constants.Lower_Case_Map);
        for index in reverse 0 .. (This.list.size) - (1) loop
            name := Java_Unbox (This.list.get (index));
            if (mediaFileType.compareTo (name)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isSupported;

   function getInstance return ImageTypeUtil_Access is
   begin
        return ImageTypeUtil_Package.SINGLETON;
   end getInstance;

   procedure isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String) is
      Java_Result : constant Boolean := ImageTypeUtil'Class (This).isSupported (mediaFileType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSupported;

begin
   null;
   SINGLETON := ImageTypeUtil_Package.Create;

end org.allbinary.image.ImageTypeUtil_Package;


