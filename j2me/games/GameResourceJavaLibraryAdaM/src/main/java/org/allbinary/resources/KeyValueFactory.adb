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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;

package body org.allbinary.resources.KeyValueFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
   begin
        if not (This.MAP.containsKey (Java_Box (key))) then
            return key;
        end if;
        return Java_Unbox (This.MAP.get (Java_Box (key)));
   end get;

   procedure get (This : in out KeyValueFactory; key : Unbounded_String) is
      Java_Result : constant Unbounded_String := KeyValueFactory'Class (This).get (key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := KeyValueFactory_Package.Create;

end org.allbinary.resources.KeyValueFactory_Package;


