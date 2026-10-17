-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package is

   procedure Initialize_Fields (This : in out KeySpecFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeySpecFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeySpecFactory_Access is
      This : constant KeySpecFactory_Access := new KeySpecFactory;
   begin
      KeySpecFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) return KeySpec_Access is
   begin
        return null;
   end getInstance;

   procedure getInstance (algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) is
      Java_Result : constant KeySpec_Access := getInstance (algorithm, keyData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   DES := To_Unbounded_String ("DES");
   DESEDE := To_Unbounded_String ("DESede");

end org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory_Package;


