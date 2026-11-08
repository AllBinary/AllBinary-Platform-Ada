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


with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;

package body org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   function "=" (Left, Right : RelativeRelationship_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ResourceRelativeRelationshipFactory'Class) is
   begin
      null;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.initialized := False;
   end Initialize_Fields;

   procedure Initialize (This : in out ResourceRelativeRelationshipFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ResourceRelativeRelationshipFactory_Access is
      This : constant ResourceRelativeRelationshipFactory_Access := new ResourceRelativeRelationshipFactory;
   begin
      ResourceRelativeRelationshipFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out ResourceRelativeRelationshipFactory; level : Integer) is
   begin
        ResourceRelativeRelationshipFactory'Class (This).setInitialized (True);
   end init;

   --  throws Exception
   function getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String) return BasicArrayList_Access is
      listCanBeNull : Java_Object_Access;
   begin
        listCanBeNull := This.hashtable.get (Java_Box (resource));
        if (listCanBeNull) = (null) then
            return This.basicArrayListUtil.getImmutableInstance;
        end if;
        return BasicArrayList_Access (listCanBeNull);
   end getResourceRelativeRelationshipList;

   --  throws Exception
   procedure addResourceRelativeRelationship (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String; hardPoint_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      hardPoint : constant RelativeRelationship_Access := RelativeRelationship_Access (hardPoint_Param);
      list : BasicArrayList_Access;
   begin
        list := ResourceRelativeRelationshipFactory'Class (This).getResourceRelativeRelationshipList (resource);
        if (Java_Object_Access (list)) = (Java_Object_Access (This.basicArrayListUtil.getImmutableInstance)) then
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        end if;
        list.add (Java_Object_Access (hardPoint));
        This.hashtable.put (Java_Box (resource), list);
   end addResourceRelativeRelationship;

   function isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer) return Boolean is
   begin
        return False;
   end isLoadingLevel;

   function isFeature (This : in out ResourceRelativeRelationshipFactory) return Boolean is
   begin
        return False;
   end isFeature;

   procedure setInitialized (This : in out ResourceRelativeRelationshipFactory; initialized : Boolean) is
   begin
        This.initialized := initialized;
   end setInitialized;

   function isInitialized (This : in out ResourceRelativeRelationshipFactory) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   procedure getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := ResourceRelativeRelationshipFactory'Class (This).getResourceRelativeRelationshipList (resource => resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceRelativeRelationshipList;

   procedure isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer) is
      Java_Result : constant Boolean := ResourceRelativeRelationshipFactory'Class (This).isLoadingLevel (level => level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLoadingLevel;

end org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package;


