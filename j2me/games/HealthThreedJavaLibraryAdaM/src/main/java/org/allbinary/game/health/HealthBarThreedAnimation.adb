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


package body org.allbinary.game.health.HealthBarThreedAnimation_Package is

   procedure Initialize_Fields (This : in out HealthBarThreedAnimation'Class) is
   begin
      null;
      
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.object3dProcessor := Object3dProcessorUtil_Package.getInstance.getInstanceObject3dProcessor;
   end Initialize_Fields;


   procedure Initialize (This : in out HealthBarThreedAnimation'Class; layerInterface : AllBinaryLayer_Access; location : Integer) is
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

   function Create (layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarThreedAnimation_Access is
      This : constant HealthBarThreedAnimation_Access := new HealthBarThreedAnimation;
   begin
      Initialize (This.all, layerInterface, location);
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
        HealthBarAnimation (This).onHealthChange (newX2);
        This.updateColor;
        This.updateSize;
   end onHealthChange;

   procedure paintThreedXYZ (This : in out HealthBarThreedAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
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


