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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.util.HashtableUtil_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   procedure Initialize_Fields (This : in out HashtableUtil'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out HashtableUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HashtableUtil_Access is
      This : constant HashtableUtil_Access := new HashtableUtil;
   begin
      HashtableUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HashtableUtil_Access is
   begin
        return HashtableUtil_Package.instance;
   end getInstance;

   procedure putAll (This : in out HashtableUtil; fromHashtable_Param : access ABHashtable_Package.ABHashtable'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      fromHashtable : constant ABHashtable_Access := ABHashtable_Access (fromHashtable_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      enumeration : Enumeration_Access;
      keyCanBeNull : Java_Object_Access;
      valueCanBeNull : Java_Object_Access;
   begin
        enumeration := fromHashtable.keys;
        keyCanBeNull := null;
        valueCanBeNull := null;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            keyCanBeNull := This.enumerationUtil.nextElement (enumeration);
            valueCanBeNull := hashtable.get (keyCanBeNull);
            if (valueCanBeNull) = (null) then
                null;
            else
                hashtable.put (keyCanBeNull, valueCanBeNull);
            end if;
        end loop;
   end putAll;

   function getKeysAsArray (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return Java_Object_Access_Array_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      objectArray : Java_Object_Access_Array_Access;
      index : Integer;
      enumeration : Enumeration_Access;
   begin
        objectArray := new Java_Object_Access_Array'(0 .. (hashtable.size) - 1 => null);
        index := 0;
        enumeration := hashtable.keys;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            objectArray (Java_Post_Increment (index)) := Java_Object_Access (This.enumerationUtil.nextElement (enumeration));
        end loop;
        return objectArray;
   end getKeysAsArray;

   function getKeysAsList (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BasicArrayList_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      list : BasicArrayList_Access;
      enumeration : Enumeration_Access;
   begin
        list := BasicArrayList_Access (BasicArrayListS_Package.Create (hashtable.size));
        enumeration := hashtable.keys;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            list.add (This.enumerationUtil.nextElement (enumeration));
        end loop;
        return list;
   end getKeysAsList;

   procedure getKeysAsArray (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      Java_Result : constant Java_Object_Access_Array_Access := HashtableUtil'Class (This).getKeysAsArray (hashtable_Param => hashtable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKeysAsArray;

   procedure getKeysAsList (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      Java_Result : constant BasicArrayList_Access := HashtableUtil'Class (This).getKeysAsList (hashtable_Param => hashtable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKeysAsList;

begin
   null;
   instance := HashtableUtil_Package.Create;

end org.allbinary.util.HashtableUtil_Package;


