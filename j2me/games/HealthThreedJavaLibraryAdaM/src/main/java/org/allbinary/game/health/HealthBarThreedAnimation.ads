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

with AllBinary_Java;
limited with org.allbinary.game.health.HealthBarThreedAnimation_Package;
package org.allbinary.game.health.HealthBarThreedAnimation_Package_References is
   type HealthBarThreedAnimation_Access is access all org.allbinary.game.health.HealthBarThreedAnimation_Package.HealthBarThreedAnimation'Class;
   type HealthBarThreedAnimation_Access_Array is array (Natural range <>) of HealthBarThreedAnimation_Access;
   type HealthBarThreedAnimation_Access_Array_Access is access all HealthBarThreedAnimation_Access_Array;
   type HealthBarThreedAnimation_Access_Array_Access_Array is array (Natural range <>) of HealthBarThreedAnimation_Access_Array_Access;
   type HealthBarThreedAnimation_Access_Array_Access_Array_Access is access all HealthBarThreedAnimation_Access_Array_Access_Array;
   type HealthBarThreedAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthBarThreedAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthBarThreedAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthBarThreedAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthBarThreedAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthBarThreedAnimation_Access_Array_Access is (if Value /= null and then Value.all in HealthBarThreedAnimation_Access_Array_Object'Class then HealthBarThreedAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type HealthBarThreedAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthBarThreedAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthBarThreedAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthBarThreedAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthBarThreedAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthBarThreedAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthBarThreedAnimation_Access_Array_Access_Array_Object'Class then HealthBarThreedAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.health.HealthBarThreedAnimation_Package_References;

with org.allbinary.game.health.HealthBarThreedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with min3d.objectPrimitives.Rectangle_Package;
with min3d.objectPrimitives.Rectangle_Package_References;
limited with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References;
limited with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;

package org.allbinary.game.health.HealthBarThreedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Rectangle_Package renames Standard.min3d.objectPrimitives.Rectangle_Package;
   package Object3dProcessor_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype Object3dProcessor_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access;
   use type Object3dProcessor_Access;
   subtype Object3dProcessor_Access_Array is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array;
   use type Object3dProcessor_Access_Array;
   subtype Object3dProcessor_Access_Array_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access;
   use type Object3dProcessor_Access_Array_Access;
   subtype Object3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access_Array;
   use type Object3dProcessor_Access_Array_Access_Array;
   subtype Object3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access_Array_Access;
   use type Object3dProcessor_Access_Array_Access_Array_Access;
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   use type BasicColorFactory_Access;
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   use type BasicColorFactory_Access_Array;
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access;
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   use type BasicColorFactory_Access_Array_Access_Array;
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthBarThreedAnimation_Access is org.allbinary.game.health.HealthBarThreedAnimation_Package_References.HealthBarThreedAnimation_Access;
   function "=" (Left, Right : HealthBarThreedAnimation_Access) return Boolean renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References."=";
   subtype HealthBarThreedAnimation_Access_Array is org.allbinary.game.health.HealthBarThreedAnimation_Package_References.HealthBarThreedAnimation_Access_Array;
   function "=" (Left, Right : HealthBarThreedAnimation_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References."=";
   subtype HealthBarThreedAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarThreedAnimation_Package_References.HealthBarThreedAnimation_Access_Array_Access;
   function "=" (Left, Right : HealthBarThreedAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References."=";
   function Java_Box (Value : HealthBarThreedAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References.Java_Box;
   function Java_Unbox_HealthBarThreedAnimation_Access_Array (Value : access Java_Object'Class) return HealthBarThreedAnimation_Access_Array_Access renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References.Java_Unbox_HealthBarThreedAnimation_Access_Array;
   subtype HealthBarThreedAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarThreedAnimation_Package_References.HealthBarThreedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarThreedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References."=";
   subtype HealthBarThreedAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarThreedAnimation_Package_References.HealthBarThreedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarThreedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References."=";
   function Java_Box (Value : HealthBarThreedAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References.Java_Box;
   function Java_Unbox_HealthBarThreedAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthBarThreedAnimation_Access_Array_Access_Array_Access renames org.allbinary.game.health.HealthBarThreedAnimation_Package_References.Java_Unbox_HealthBarThreedAnimation_Access_Array_Access_Array;

   type HealthBarThreedAnimation is new HealthBarAnimation with record
      rectangle : Rectangle_Access;
      HealthBarThreedAnimation_Field_basicColorFactory : BasicColorFactory_Access;
      object3dProcessor : Object3dProcessor_Access;
   end record;

   procedure Initialize (This : in out HealthBarThreedAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarThreedAnimation_Access;
   procedure updateColor (This : in out HealthBarThreedAnimation);
   procedure updateSize (This : in out HealthBarThreedAnimation);
   procedure onHealthChange (This : in out HealthBarThreedAnimation; newX2 : Integer);
   procedure paintThreedXYZ (This : in out HealthBarThreedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.health.HealthBarThreedAnimation_Package;


