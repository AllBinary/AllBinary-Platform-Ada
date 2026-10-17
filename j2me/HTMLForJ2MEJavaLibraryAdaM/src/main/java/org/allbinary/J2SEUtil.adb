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


package body org.allbinary.J2SEUtil_Package is

   procedure Initialize_Fields (This : in out J2SEUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out J2SEUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return J2SEUtil_Access is
      This : constant J2SEUtil_Access := new J2SEUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return J2SEUtil_Access is
   begin
        return J2SEUtil_Package.instance;
   end getInstance;

   function getHashMapAsArray (This : in out J2SEUtil; hashMap : HashMap_Access) return Java_Object_Access_Array_Access is
      objectArray : Java_Object_Access_Array_Access;
   begin
        objectArray := hashMap.keySet.toArray;
        return objectArray;
   end getHashMapAsArray;

   function getMapAsArray (This : in out J2SEUtil; map : Map_Access) return Java_Object_Access_Array_Access is
      objectArray : Java_Object_Access_Array_Access;
   begin
        objectArray := map.keySet.toArray;
        return objectArray;
   end getMapAsArray;

   function getSetAsArray (This : in out J2SEUtil; set : Set_Access) return Java_Object_Access_Array_Access is
      objectArray : Java_Object_Access_Array_Access;
   begin
        objectArray := set.toArray;
        return objectArray;
   end getSetAsArray;

   procedure getInstance is
      Java_Result : constant J2SEUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getHashMapAsArray (This : in out J2SEUtil; hashMap : HashMap_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := J2SEUtil'Class (This).getHashMapAsArray (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashMapAsArray;

   procedure getMapAsArray (This : in out J2SEUtil; map : Map_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := J2SEUtil'Class (This).getMapAsArray (map);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMapAsArray;

   procedure getSetAsArray (This : in out J2SEUtil; set : Set_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := J2SEUtil'Class (This).getSetAsArray (set);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSetAsArray;

begin
   null;
   instance := J2SEUtil_Package.Create;

end org.allbinary.J2SEUtil_Package;


