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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with min3d.objectPrimitives.Rectangle_Package; use min3d.objectPrimitives.Rectangle_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;

package org.allbinary.game.health.HealthBarThreedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Rectangle_Package renames Standard.min3d.objectPrimitives.Rectangle_Package;
   package Object3dProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type HealthBarThreedAnimation is tagged;
   type HealthBarThreedAnimation_Access is access all HealthBarThreedAnimation'Class;
   type HealthBarThreedAnimation_Access_Array is array (Natural range <>) of HealthBarThreedAnimation_Access;
   type HealthBarThreedAnimation_Access_Array_Access is access all HealthBarThreedAnimation_Access_Array;
   type HealthBarThreedAnimation_Access_Array_Access_Array is array (Natural range <>) of HealthBarThreedAnimation_Access_Array_Access;
   type HealthBarThreedAnimation_Access_Array_Access_Array_Access is access all HealthBarThreedAnimation_Access_Array_Access_Array;

   type HealthBarThreedAnimation is new HealthBarAnimation with record
      rectangle : Rectangle_Access;
      basicColorFactory : BasicColorFactory_Access;
      object3dProcessor : Object3dProcessor_Access;
   end record;

   procedure Initialize (This : in out HealthBarThreedAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarThreedAnimation_Access;
   procedure updateColor (This : in out HealthBarThreedAnimation);
   procedure updateSize (This : in out HealthBarThreedAnimation);
   procedure onHealthChange (This : in out HealthBarThreedAnimation; newX2 : Integer);
   procedure paintThreedXYZ (This : in out HealthBarThreedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.health.HealthBarThreedAnimation_Package;


