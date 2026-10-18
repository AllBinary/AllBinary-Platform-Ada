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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
        listCanBeNull := This.hashtable.get (resource);
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
        if (list) = (This.basicArrayListUtil.getImmutableInstance) then
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        end if;
        list.add (Java_Object_Access (hardPoint));
        This.hashtable.put (resource, list);
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


