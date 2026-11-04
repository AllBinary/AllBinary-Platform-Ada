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


with org.allbinary.game.resource.ResourceLoadingLevel_Package; use org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package_References;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package body org.allbinary.game.configuration.event.GameInitializedEvent_Package is

   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   subtype ResourceLoadingLevel_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   procedure Initialize_Fields (This : in out GameInitializedEvent'Class) is
   begin
      null;
      This.resourceLoadingLevel := ResourceLoadingLevel_Access (ResourceLoadingLevelFactory_Package.getInstance.LEVEL);
      This.level := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInitializedEvent'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return GameInitializedEvent_Access is
      This : constant GameInitializedEvent_Access := new GameInitializedEvent;
   begin
      GameInitializedEvent_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   procedure setLevel (This : in out GameInitializedEvent; level : Integer) is
   begin
        This.level := level;
        This.resourceLoadingLevel := ResourceLoadingLevel_Access (ResourceLoadingLevelFactory_Package.getInstance.LEVEL);
   end setLevel;

   function getLevel (This : in out GameInitializedEvent) return Integer is
   begin
        return This.level;
   end getLevel;

   procedure setResourceLoadingLevel (This : in out GameInitializedEvent; resourceLoadingLevel_Param : access ResourceLoadingLevel_Package.ResourceLoadingLevel'Class) is
      resourceLoadingLevel : constant ResourceLoadingLevel_Access := ResourceLoadingLevel_Access (resourceLoadingLevel_Param);
   begin
        This.resourceLoadingLevel := resourceLoadingLevel;
        This.level := This.resourceLoadingLevel.getLevel;
   end setResourceLoadingLevel;

   function getResourceLoadingLevel (This : in out GameInitializedEvent) return ResourceLoadingLevel_Access is
   begin
        return This.resourceLoadingLevel;
   end getResourceLoadingLevel;

end org.allbinary.game.configuration.event.GameInitializedEvent_Package;


