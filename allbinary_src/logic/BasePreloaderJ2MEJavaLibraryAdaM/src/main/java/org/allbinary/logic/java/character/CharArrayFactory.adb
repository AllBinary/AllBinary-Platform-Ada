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


package body org.allbinary.logic.java.character_Id.CharArrayFactory_Package is

   procedure Initialize_Fields (This : in out CharArrayFactory'Class) is
   begin
      null;
      This.zeroCharArray := new Character_Array'(0 .. (0) - 1 => ASCII.NUL);
   end Initialize_Fields;

   procedure Initialize (This : in out CharArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CharArrayFactory_Access is
      This : constant CharArrayFactory_Access := new CharArrayFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CharArrayFactory_Access is
   begin
        return CharArrayFactory_Package.instance;
   end getInstance;

   function getZeroCharArray (This : in out CharArrayFactory) return Character_Array_Access is
   begin
        return This.zeroCharArray;
   end getZeroCharArray;

   procedure getInstance is
      Java_Result : constant CharArrayFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getZeroCharArray (This : in out CharArrayFactory) is
      Java_Result : constant Character_Array_Access := CharArrayFactory'Class (This).getZeroCharArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZeroCharArray;

begin
   null;
   instance := CharArrayFactory_Package.Create;

end org.allbinary.logic.java.character_Id.CharArrayFactory_Package;


