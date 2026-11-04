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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package body org.platform.ThreedObjResources_Package is

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
   procedure Initialize_Fields (This : in out ThreedObjResources'Class) is
   begin
      null;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;

   procedure Initialize (This : in out ThreedObjResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreedObjResources_Access is
      This : constant ThreedObjResources_Access := new ThreedObjResources;
   begin
      ThreedObjResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreedObjResources_Access is
   begin
        return ThreedObjResources_Access (ThreedObjResources_Package.instance);
   end getInstance;

   function get (This : in out ThreedObjResources; resourceName : Unbounded_String) return Unbounded_String is
      resourceName2 : Unbounded_String;
   begin
        resourceName2 := Java_Unbox (This.hashtable.get (Java_Box (resourceName)));
        if (resourceName2) /= (Null_Unbounded_String) then
            return resourceName2;
        end if;
        return resourceName;
   end get;

   procedure get (This : in out ThreedObjResources; resourceName : Unbounded_String) is
      Java_Result : constant Unbounded_String := ThreedObjResources'Class (This).get (resourceName => resourceName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := ThreedObjResources_Package.Create;

end org.platform.ThreedObjResources_Package;


