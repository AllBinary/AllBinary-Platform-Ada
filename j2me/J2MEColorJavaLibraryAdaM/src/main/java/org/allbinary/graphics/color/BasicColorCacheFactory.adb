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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;

package body org.allbinary.graphics.color.BasicColorCacheFactory_Package is

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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out BasicColorCacheFactory'Class) is
   begin
      null;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   function getInstance return BasicColorCacheFactory_Access is
   begin
        return BasicColorCacheFactory_Access (BasicColorCacheFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BasicColorCacheFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicColorCacheFactory_Access is
      This : constant BasicColorCacheFactory_Access := new BasicColorCacheFactory;
   begin
      BasicColorCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out BasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicDefaultColor : constant BasicColor_Access := BasicColor_Access (basicDefaultColor_Param);
   begin
        This.hashtable.put (Java_Box (basicDefaultColor.intValue), basicDefaultColor);
   end add;

   function getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) return BasicColor_Access is
      basicColor : BasicColor_Access;
   begin
        basicColor := BasicColor_Access (This.hashtable.get (Java_Box (integer_Id)));
        if (basicColor) = (null) then
            basicColor := BasicColorFactory_Package.getInstance.createInstance (Integer (integer_Id));
            This.hashtable.put (Java_Box (integer_Id), basicColor);
        end if;
        return basicColor;
   end getAndOrCreate;

   procedure getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) is
      Java_Result : constant BasicColor_Access := BasicColorCacheFactory'Class (This).getAndOrCreate (integer_Id => integer_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAndOrCreate;

begin
   null;
   instance := BasicColorCacheFactory_Package.Create;

end org.allbinary.graphics.color.BasicColorCacheFactory_Package;


