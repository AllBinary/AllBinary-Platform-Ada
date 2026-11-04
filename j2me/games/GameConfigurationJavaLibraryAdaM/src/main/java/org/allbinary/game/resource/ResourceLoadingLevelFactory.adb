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
with org.allbinary.game.resource.ResourceLoadingLevel_Package;

package body org.allbinary.game.resource.ResourceLoadingLevelFactory_Package is

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
   procedure Initialize_Fields (This : in out ResourceLoadingLevelFactory'Class) is
   begin
      null;
      This.LOAD_EARLY := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Load Early"), Integer'Last);
      This.LOAD_TOUCH := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Load Touch"), (Integer'Last) - (1));
      This.LOAD_GAME := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Load Game"), (Integer'Last) - (2));
      This.LEVEL := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Level"), (Integer'Last) - (99));
      This.MAX_LEVEL := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Max Level"), (Integer'Last) - (100));
      This.LOAD_ALL := ResourceLoadingLevel_Package.Create (To_Unbounded_String ("Load All"), -(1));
      This.RESOURCE_LOADING_LEVEL_ARRAY := new ResourceLoadingLevel_Access_Array'(This.LOAD_ALL, This.MAX_LEVEL, This.LEVEL, This.LOAD_GAME, This.LOAD_TOUCH, This.LOAD_EARLY);
   end Initialize_Fields;

   procedure Initialize (This : in out ResourceLoadingLevelFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ResourceLoadingLevelFactory_Access is
      This : constant ResourceLoadingLevelFactory_Access := new ResourceLoadingLevelFactory;
   begin
      ResourceLoadingLevelFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ResourceLoadingLevelFactory_Access is
   begin
        return ResourceLoadingLevelFactory_Access (ResourceLoadingLevelFactory_Package.instance);
   end getInstance;

   function getLevelString (This : in out ResourceLoadingLevelFactory; level : Integer) return Unbounded_String is
      index : Integer;
   begin
        for index in 0 .. (This.RESOURCE_LOADING_LEVEL_ARRAY'Length) - 1 loop
            if (level) = (This.RESOURCE_LOADING_LEVEL_ARRAY (index).getLevel) then
                return This.RESOURCE_LOADING_LEVEL_ARRAY (index).getName;
            end if;
        end loop;
        return To_Unbounded_String (Java_Image (level));
   end getLevelString;

   procedure getLevelString (This : in out ResourceLoadingLevelFactory; level : Integer) is
      Java_Result : constant Unbounded_String := ResourceLoadingLevelFactory'Class (This).getLevelString (level => level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLevelString;

begin
   null;
   instance := ResourceLoadingLevelFactory_Package.Create;

end org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;


