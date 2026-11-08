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
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.game.layer.LevelLayersFinder_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   function "=" (Left, Right : EnumerationUtil_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   procedure Initialize_Fields (This : in out LevelLayersFinder'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out LevelLayersFinder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LevelLayersFinder_Access is
      This : constant LevelLayersFinder_Access := new LevelLayersFinder;
   begin
      LevelLayersFinder_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LevelLayersFinder_Access is
   begin
        return LevelLayersFinder_Access (LevelLayersFinder_Package.instance);
   end getInstance;

   function get (This : in out LevelLayersFinder; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BasicArrayList_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      list : BasicArrayList_Access;
      enumeration : Enumeration_Access;
      layerHashtableCanBeNull : ABHashtable_Access;
      integerCanBeNull : Integer;
      cachedIntegerCanBeNull : Integer;
   begin
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        enumeration := hashtable.keys;
        layerHashtableCanBeNull := null;
        integerCanBeNull := 0;
        cachedIntegerCanBeNull := 0;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            layerHashtableCanBeNull := ABHashtable_Access (hashtable.get (Java_Object_Access (This.enumerationUtil.nextElement (enumeration))));
            integerCanBeNull := Java_Unbox_Integer (layerHashtableCanBeNull.get (Java_Object_Access (Layer_Package.ID)));
            cachedIntegerCanBeNull := smallIntegerSingletonFactory.getAt (Integer (integerCanBeNull));
            if not (list.contains (Java_Box (cachedIntegerCanBeNull))) then
                list.add (Java_Box (cachedIntegerCanBeNull));
            end if;
        end loop;
        return list;
   end get;

   procedure get (This : in out LevelLayersFinder; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      Java_Result : constant BasicArrayList_Access := LevelLayersFinder'Class (This).get (hashtable_Param => hashtable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := LevelLayersFinder_Package.Create;

end org.allbinary.game.layer.LevelLayersFinder_Package;


