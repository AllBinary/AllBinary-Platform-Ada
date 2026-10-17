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


package body org.allbinary.resources.KeyValueFactory_Package is

   procedure Initialize_Fields (This : in out KeyValueFactory'Class) is
   begin
      null;
      This.MAP := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;

   procedure Initialize (This : in out KeyValueFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return KeyValueFactory_Access is
      This : constant KeyValueFactory_Access := new KeyValueFactory;
   begin
      KeyValueFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return KeyValueFactory_Access is
   begin
        return KeyValueFactory_Package.instance;
   end getInstance;

   function get (This : in out KeyValueFactory; key : Unbounded_String) return Unbounded_String is
      value : Unbounded_String;
   begin
        value := Unbounded_String (This.MAP.get (Java_Object_Access (key)));
        if (value) = (Null_Unbounded_String) then
            return key;
        end if;
        return value;
   end get;

   procedure get (This : in out KeyValueFactory; key : Unbounded_String) is
      Java_Result : constant Unbounded_String := KeyValueFactory'Class (This).get (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := KeyValueFactory_Package.Create;

end org.allbinary.resources.KeyValueFactory_Package;


