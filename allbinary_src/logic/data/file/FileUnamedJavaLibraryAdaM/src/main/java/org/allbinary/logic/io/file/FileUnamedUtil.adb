-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.logic.io.file.FileUnamedUtil_Package is

   procedure Initialize_Fields (This : in out FileUnamedUtil'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out FileUnamedUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileUnamedUtil_Access is
      This : constant FileUnamedUtil_Access := new FileUnamedUtil;
   begin
      FileUnamedUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileUnamedUtil_Access is
   begin
        return FileUnamedUtil_Package.instance;
   end getInstance;

   function process (This : in out FileUnamedUtil; string_Id : Unbounded_String) return Unbounded_String is
      simplifiedString : Unbounded_String;
   begin
        simplifiedString := Translate (string_Id, Ada.Strings.Maps.Constants.Lower_Case_Map);
        simplifiedString := Java_Replace (simplifiedString, Java_Image (This.commonSeps.SPACE), Java_Image (This.commonSeps.UNDERSCORE));
        simplifiedString := Java_Replace (simplifiedString, Java_Image (This.commonSeps.DASH), Java_Image (This.commonSeps.UNDERSCORE));
        return simplifiedString;
   end process;

   procedure process (This : in out FileUnamedUtil; string_Id : Unbounded_String) is
      Java_Result : constant Unbounded_String := FileUnamedUtil'Class (This).process (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := FileUnamedUtil_Package.Create;

end org.allbinary.logic.io.file.FileUnamedUtil_Package;


