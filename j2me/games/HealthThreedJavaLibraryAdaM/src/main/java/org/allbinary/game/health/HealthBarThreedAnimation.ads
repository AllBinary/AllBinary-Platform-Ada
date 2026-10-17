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
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with min3d.core.ColorBufferList_Package; use min3d.core.ColorBufferList_Package;
with min3d.core.Number3dBufferList_Package; use min3d.core.Number3dBufferList_Package;
with min3d.objectPrimitives.Rectangle_Package; use min3d.objectPrimitives.Rectangle_Package;
with min3d.vos.Number3d_Package; use min3d.vos.Number3d_Package;
with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package; use org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;

package org.allbinary.game.health.HealthBarThreedAnimation_Package is

   package ColorBufferList_Package renames Standard.min3d.core.ColorBufferList_Package;
   package Number3dBufferList_Package renames Standard.min3d.core.Number3dBufferList_Package;
   package Rectangle_Package renames Standard.min3d.objectPrimitives.Rectangle_Package;
   package Number3d_Package renames Standard.min3d.vos.Number3d_Package;
   package OpenGLESGraphics_Package renames Standard.org.allbinary.device.OpenGLESGraphics_Package;
   package Object3dProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
   package Object3dProcessorUtil_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type HealthBarThreedAnimation is tagged;
   type HealthBarThreedAnimation_Access is access all HealthBarThreedAnimation'Class;
   type HealthBarThreedAnimation_Access_Array is array (Natural range <>) of HealthBarThreedAnimation_Access;
   type HealthBarThreedAnimation_Access_Array_Access is access all HealthBarThreedAnimation_Access_Array;

   type HealthBarThreedAnimation is new HealthBarAnimation with record
      rectangle : Rectangle_Access;
      basicColorFactory : BasicColorFactory_Access;
      object3dProcessor : Object3dProcessor_Access;
   end record;

   procedure Initialize (This : in out HealthBarThreedAnimation'Class; layerInterface : AllBinaryLayer_Access; location : Integer);
   function Create (layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarThreedAnimation_Access;
   procedure updateColor (This : in out HealthBarThreedAnimation);
   procedure updateSize (This : in out HealthBarThreedAnimation);
   procedure onHealthChange (This : in out HealthBarThreedAnimation; newX2 : Integer);
   procedure paintThreedXYZ (This : in out HealthBarThreedAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.health.HealthBarThreedAnimation_Package;


