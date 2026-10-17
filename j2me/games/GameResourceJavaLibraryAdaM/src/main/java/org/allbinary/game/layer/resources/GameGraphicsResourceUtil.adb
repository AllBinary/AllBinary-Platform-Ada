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


package body org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package is

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
            This.name := This.getString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return GameGraphicsResourceUtil_Access is
      This : constant GameGraphicsResourceUtil_Access := new GameGraphicsResourceUtil;
   begin
      Initialize (This.all);
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
        return This.getStringForFeature (graphicsFeature);
   end getString;

   --  throws Exception
   function getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature : GraphicsFeature_Access) return Unbounded_String is
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

   procedure getInstance is
      Java_Result : constant GameGraphicsResourceUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getString (This : in out GameGraphicsResourceUtil) is
      Java_Result : constant Unbounded_String := GameGraphicsResourceUtil'Class (This).getString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getStringForFeature (This : in out GameGraphicsResourceUtil; graphicsFeature : GraphicsFeature_Access) is
      Java_Result : constant Unbounded_String := GameGraphicsResourceUtil'Class (This).getStringForFeature (graphicsFeature);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStringForFeature;

   procedure getName (This : in out GameGraphicsResourceUtil) is
      Java_Result : constant Unbounded_String := GameGraphicsResourceUtil'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;


