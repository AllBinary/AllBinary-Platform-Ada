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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package; use org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GraphicsFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out GameGraphicsResourceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.SPRITE := To_Unbounded_String ("_sprite");
      This.QUARTER := To_Unbounded_String ("_quarter");
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   function getInstance return GameGraphicsResourceUtil_Access is
   begin
        if (GameGraphicsResourceUtil_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameGraphicsResourceUtil_Package.instance := GameGraphicsResourceUtil_Package.Create;
        end if;
        return GameGraphicsResourceUtil_Access (GameGraphicsResourceUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameGraphicsResourceUtil'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            This.name := GameGraphicsResourceUtil'Class (This).getString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameGraphicsResourceUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return GameGraphicsResourceUtil_Access is
      This : constant GameGraphicsResourceUtil_Access := new GameGraphicsResourceUtil;
   begin
      GameGraphicsResourceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getString (This : in out GameGraphicsResourceUtil) return Unbounded_String is
      graphicsFeatureFactory : GraphicsFeatureFactory_Access;
      graphicsFeature : GraphicsFeature_Access;
      features : Features_Access;
   begin
        graphicsFeatureFactory := GraphicsFeatureFactory_Package.getInstance;
        graphicsFeature := graphicsFeatureFactory.NONE;
        features := Features_Package.getInstance;
        if features.isFeature (graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS) then
            graphicsFeature := graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS;
        elsif features.isFeature (graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) then
            graphicsFeature := graphicsFeatureFactory.SPRITE_FULL_GRAPHICS;
        elsif features.isFeature (graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) then
            graphicsFeature := graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS;
        elsif features.isFeature (graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) then
            graphicsFeature := graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY;
        end if;
        return GameGraphicsResourceUtil'Class (This).getStringForFeature (graphicsFeature);
   end getString;

   --  throws Exception
   function getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature_Package.GraphicsFeature'Class) return Unbounded_String is
      graphicsFeature : constant GraphicsFeature_Access := GraphicsFeature_Access (graphicsFeature_Param);
      stringBuffer : StringMaker_Access;
      graphicsFeatureFactory : GraphicsFeatureFactory_Access;
      features : Features_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        graphicsFeatureFactory := GraphicsFeatureFactory_Package.getInstance;
        stringBuffer.delete (0, stringBuffer.length);
        features := Features_Package.getInstance;
        if features.isFeature (graphicsFeatureFactory.VECTOR_GRAPHICS) then
            null;
        elsif features.isFeature (graphicsFeatureFactory.IMAGE_GRAPHICS) then
            if ((graphicsFeature) = (graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) or else ((graphicsFeature) = (graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) then
                null;
            elsif (graphicsFeature) = (graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) then
                stringBuffer.append (This.SPRITE);
            elsif (graphicsFeature) = (graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) then
                stringBuffer.append (This.QUARTER);
                stringBuffer.append (This.SPRITE);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("None/Unknown Sub Image Resource Type Specified")));
            end if;
        elsif OpenGLFeatureUtil_Package.getInstance.isAnyThreed then
            stringBuffer.append (CanvasStrings_Package.getInstance.OBJ_MODEL);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("None/Unknown Main Image Resource Type Specified")));
        end if;
        return stringBuffer.toString;
   end getStringForFeature;

   function getName (This : in out GameGraphicsResourceUtil) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature_Param : access GraphicsFeature_Package.GraphicsFeature'Class) is
      Java_Result : constant Unbounded_String := GameGraphicsResourceUtil'Class (This).getStringForFeature (graphicsFeature_Param => graphicsFeature_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStringForFeature;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;


