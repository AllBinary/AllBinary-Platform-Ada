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


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with min3d.core.ColorBufferList_Package; use min3d.core.ColorBufferList_Package;
with min3d.core.Number3dBufferList_Package; use min3d.core.Number3dBufferList_Package;
with min3d.objectPrimitives.Rectangle_Package; use min3d.objectPrimitives.Rectangle_Package;
with min3d.objectPrimitives.Rectangle_Package_References;
with min3d.vos.Number3d_Package; use min3d.vos.Number3d_Package;
with org.allbinary.device.OpenGLESGraphics_Package; use org.allbinary.device.OpenGLESGraphics_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package; use org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References;
with org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package; use org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package body org.allbinary.game.health.HealthBarThreedAnimation_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package ColorBufferList_Package renames Standard.min3d.core.ColorBufferList_Package;
   package Number3dBufferList_Package renames Standard.min3d.core.Number3dBufferList_Package;
   package Number3d_Package renames Standard.min3d.vos.Number3d_Package;
   package OpenGLESGraphics_Package renames Standard.org.allbinary.device.OpenGLESGraphics_Package;
   package Object3dProcessorUtil_Package renames Standard.org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Rectangle_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames min3d.objectPrimitives.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames min3d.objectPrimitives.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames min3d.objectPrimitives.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames min3d.objectPrimitives.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is min3d.objectPrimitives.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames min3d.objectPrimitives.Rectangle_Package_References."=";
   subtype Object3dProcessor_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access;
   function "=" (Left, Right : Object3dProcessor_Access) return Boolean renames org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References."=";
   subtype Object3dProcessor_Access_Array is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array;
   function "=" (Left, Right : Object3dProcessor_Access_Array) return Boolean renames org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References."=";
   subtype Object3dProcessor_Access_Array_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access;
   function "=" (Left, Right : Object3dProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References."=";
   subtype Object3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : Object3dProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References."=";
   subtype Object3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References.Object3dProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Object3dProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor_Package_References."=";
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
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
   procedure Initialize_Fields (This : in out HealthBarThreedAnimation'Class) is
   begin
      null;
      
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.object3dProcessor := Object3dProcessorUtil_Package.getInstance.getInstanceObject3dProcessor;
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBarThreedAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        HealthBarAnimation_Package.Initialize (This, layerInterface, location);
        Initialize_Fields (This);
        This.basicColor := This.basicColorFactory.GREEN;
        This.colorP := This.basicColor.intValue;
        This.rectangle := Rectangle_Package.Create (0, 0, 1, 1, This.basicColor);
        This.rectangle.setDoubleSidedEnabled (True);
        This.rectangle.setNormalsEnabled (False);
        This.rectangle.setTexturesEnabled (False);
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarThreedAnimation_Access is
      This : constant HealthBarThreedAnimation_Access := new HealthBarThreedAnimation;
   begin
      HealthBarThreedAnimation_Package.Initialize (This.all, layerInterface_Param, location);
      return This;
   end Create;

   procedure updateColor (This : in out HealthBarThreedAnimation) is
      colorBufferList : ColorBufferList_Access;
      size : Integer;
      index : Integer;
   begin
        colorBufferList := This.rectangle.getVertices.getColor4BufferList;
        size := colorBufferList.size;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            colorBufferList.set (index, This.basicColor);
        end loop;
   end updateColor;

   procedure updateSize (This : in out HealthBarThreedAnimation) is
      number3dBufferList : Number3dBufferList_Access;
      width : Integer;
      height : Integer;
      segsH : Integer;
      segsW : Integer;
      row : Integer;
      col : Integer;
      w : Float;
      h : Float;
      width5 : Float;
      height5 : Float;
      index : Integer;
   begin
        number3dBufferList := This.rectangle.getVertices.getPointsOnFacesNumber3dBufferList;
        width := This.x2;
        height := (This.thickness) * (2);
        segsH := 1;
        segsW := 1;
        row := 0;
        col := 0;
        w := Float ((width) / (segsW));
        h := Float ((height) / (segsH));
        width5 := (Float (width)) / (2.0);
        height5 := (Float (height)) / (2.0);
        index := 0;
        for row in 0 .. segsH loop
            for col in 0 .. segsW loop
                number3dBufferList.set (Java_Post_Increment (index), ((Float (col)) * (w)) - (width5), ((Float (row)) * (h)) - (height5), 0.0);
            end loop;
        end loop;
   end updateSize;

   procedure onHealthChange (This : in out HealthBarThreedAnimation; newX2 : Integer) is
   begin
        HealthBarAnimation_Package.HealthBarAnimation (This).onHealthChange (newX2);
        HealthBarThreedAnimation'Class (This).updateColor;
        HealthBarThreedAnimation'Class (This).updateSize;
   end onHealthChange;

   procedure paintThreedXYZ (This : in out HealthBarThreedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      openGLESGraphics : OpenGLESGraphics_Access;
      gl : GL10_Access;
      viewPosition : ViewPositionBase_Access;
      positionNumber3d : Number3d_Access;
   begin
        openGLESGraphics := OpenGLESGraphics_Access (graphics);
        gl := openGLESGraphics.getGl10;
        viewPosition := This.allbinaryLayer.getViewPosition;
        positionNumber3d := This.rectangle.getPosition;
        positionNumber3d.x := -((Float (viewPosition.getX)));
        positionNumber3d.z := -((Float (viewPosition.getY)));
        positionNumber3d.y := (viewPosition.getZ) + (This.allbinaryLayer.getHeight);
        This.object3dProcessor.drawObject (gl, This.rectangle);
   end paintThreedXYZ;

end org.allbinary.game.health.HealthBarThreedAnimation_Package;


