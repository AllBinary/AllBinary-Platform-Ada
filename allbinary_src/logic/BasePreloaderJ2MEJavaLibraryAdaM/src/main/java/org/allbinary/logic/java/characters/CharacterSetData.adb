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



package body org.allbinary.logic.java.characters.CharacterSetData_Package is

   procedure Initialize_Fields (This : in out CharacterSetData'Class) is
   begin
      null;
      This.US_ASCII := To_Unbounded_String ("US-ASCII");
      This.ISO_8859_1 := To_Unbounded_String ("ISO-8859-1");
      This.UTF_8 := To_Unbounded_String ("UTF-8");
      This.UTF_16 := To_Unbounded_String ("UTF-16");
      This.UTF_16BE := To_Unbounded_String ("UTF-16BE");
      This.UTF_16LE := To_Unbounded_String ("UTF-16LE");
   end Initialize_Fields;


   function getInstance return CharacterSetData_Access is
   begin
        return CharacterSetData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CharacterSetData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CharacterSetData_Access is
      This : constant CharacterSetData_Access := new CharacterSetData;
   begin
      CharacterSetData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CharacterSetData_Package.Create;

end org.allbinary.logic.java.characters.CharacterSetData_Package;


