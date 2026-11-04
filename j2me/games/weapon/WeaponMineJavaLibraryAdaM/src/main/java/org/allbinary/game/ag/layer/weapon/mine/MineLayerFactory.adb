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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package; use org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;

package body org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package is

   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype ViewPositionFactoryInterface_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out MineLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MineLayerFactory'Class; viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class) is
      viewPositionFactoryInterface : constant ViewPositionFactoryInterface_Access := ViewPositionFactoryInterface_Access (viewPositionFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.viewPositionFactoryInterface := viewPositionFactoryInterface;
   end Initialize;

   function Create (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class) return MineLayerFactory_Access is
      This : constant MineLayerFactory_Access := new MineLayerFactory;
   begin
      MineLayerFactory_Package.Initialize (This.all, viewPositionFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out MineLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (MineLayer_Package.Create (This.viewPositionFactoryInterface.getInstance));
   end getInstance;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;


