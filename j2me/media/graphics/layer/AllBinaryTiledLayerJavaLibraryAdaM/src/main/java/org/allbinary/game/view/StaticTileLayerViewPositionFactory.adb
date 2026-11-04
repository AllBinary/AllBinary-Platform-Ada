-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package; use org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition_Package;

package body org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package is

   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   procedure Initialize_Fields (This : in out StaticTileLayerViewPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out StaticTileLayerViewPositionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StaticTileLayerViewPositionFactory_Access is
      This : constant StaticTileLayerViewPositionFactory_Access := new StaticTileLayerViewPositionFactory;
   begin
      StaticTileLayerViewPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out StaticTileLayerViewPositionFactory) return ViewPositionBase_Access is
   begin
        return ViewPositionBase_Access (StaticTileLayerIntoPositionViewPosition_Package.Create);
   end getInstance;

end org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package;


