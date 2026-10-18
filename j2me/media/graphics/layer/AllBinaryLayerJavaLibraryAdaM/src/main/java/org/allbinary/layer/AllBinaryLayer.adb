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


package body org.allbinary.layer.AllBinaryLayer_Package is

   procedure Initialize_Fields (This : in out AllBinaryLayer'Class) is
   begin
      null;
      This.viewPositionEvent := ViewPositionEvent_Package.Create (AllBinaryLayer_Access'(This'Unchecked_Access));
      This.halfWidth := 0;
      This.halfHeight := 0;
      
      This.viewPosition := ViewPositionBase_Package.NULL_VIEW_POSITION;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayer'Class; name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
      localName : Unbounded_String;
      point : GPoint_Access;
   begin
        Layer_Package.Initialize (This, rectangle.getWidth, rectangle.getHeight);
        Initialize_Fields (This);
        localName := Null_Unbounded_String;
        if (name) = (Null_Unbounded_String) then
            localName := To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
        else
            localName := StringMaker_Package.Create.append (name).append (CommonSeps_Package.getInstance.COLON).append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (AllBinaryLayer_Access'(This'Unchecked_Access)), 16))).toString;
        end if;
        This.name := localName;
        point := rectangle.getPoint;
        AllBinaryLayer'Class (This).setPosition (point.getX, point.getY, point.getZ);
        AllBinaryLayer'Class (This).setHalfWidth ((Java_Shift_Right_Arithmetic (AllBinaryLayer'Class (This).getWidth, 1)));
        AllBinaryLayer'Class (This).setHalfHeight ((Java_Shift_Right_Arithmetic (AllBinaryLayer'Class (This).getHeight, 1)));
        This.viewPosition := viewPosition;
        This.viewPosition.setAllbinaryLayer (AllBinaryLayer_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AllBinaryLayer_Access is
      This : constant AllBinaryLayer_Access := new AllBinaryLayer;
   begin
      AllBinaryLayer_Package.Initialize (This.all, name, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure onChangeEvent (This : in out AllBinaryLayer; layerManagerEvent_Param : access ViewPositionEvent_Package.ViewPositionEvent'Class) is
      layerManagerEvent : constant ViewPositionEvent_Access := ViewPositionEvent_Access (layerManagerEvent_Param);
   begin
        null;
   end onChangeEvent;

   procedure paintThreed (This : in out AllBinaryLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getX2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (AllBinaryLayer'Class (This).getXP) + (AllBinaryLayer'Class (This).getWidth);
   end getX2;

   function getY2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (AllBinaryLayer'Class (This).getYP) + (AllBinaryLayer'Class (This).getHeight);
   end getY2;

   function getZ2 (This : in out AllBinaryLayer) return Integer is
   begin
        return Integer (((AllBinaryLayer'Class (This).getZP) + (AllBinaryLayer'Class (This).getDepth)));
   end getZ2;

   function getName (This : in out AllBinaryLayer) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setHalfWidth (This : in out AllBinaryLayer; halfWidth : Integer) is
   begin
        This.halfWidth := halfWidth;
   end setHalfWidth;

   function getHalfWidth (This : in out AllBinaryLayer) return Integer is
   begin
        return This.halfWidth;
   end getHalfWidth;

   procedure setHalfHeight (This : in out AllBinaryLayer; halfHeight : Integer) is
   begin
        This.halfHeight := halfHeight;
   end setHalfHeight;

   function getHalfHeight (This : in out AllBinaryLayer) return Integer is
   begin
        return This.halfHeight;
   end getHalfHeight;

   function getHalfDepth (This : in out AllBinaryLayer) return Integer is
   begin
        return (Integer (AllBinaryLayer'Class (This).getDepth)) / (2);
   end getHalfDepth;

   function getViewPosition (This : in out AllBinaryLayer) return ViewPositionBase_Access is
   begin
        return This.viewPosition;
   end getViewPosition;

   procedure setViewPosition (This : in out AllBinaryLayer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        This.viewPosition := viewPosition;
   end setViewPosition;

   function getGroupInterface (This : in out AllBinaryLayer) return Group_Access_Array_Access is
   begin
        return BasicGroupFactory_Package.getInstance.NONE_ARRAY;
   end getGroupInterface;

   function implmentsTickableInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsTickableInterface;

   function implmentsGameInputInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsGameInputInterface;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsArtificialIntelligenceCompositeInterface;

   function implmentsCollidableInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return False;
   end implmentsCollidableInterface;

   function implementsThreedInterface (This : in out AllBinaryLayer) return Boolean is
   begin
        return OpenGLFeatureUtil_Package.getInstance.isAnyThreed;
   end implementsThreedInterface;

   function getType (This : in out AllBinaryLayer) return Integer is
   begin
        return -(1);
   end getType;

   function getMultiPlayerType (This : in out AllBinaryLayer) return Integer is
   begin
        return -(1);
   end getMultiPlayerType;

   procedure toStringAppend (This : in out AllBinaryLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      commonLabels : CommonLabels_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer.append (AllBinaryLayer'Class (This).getName);
        stringBuffer.append (commonSeps.COLON);
        stringBuffer.append (AllBinaryLayer_Package.TYPE_Id);
        stringBuffer.appendint (AllBinaryLayer'Class (This).getType);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (Integer (AllBinaryLayer'Class (This).getXP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (Integer (AllBinaryLayer'Class (This).getYP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (Integer (AllBinaryLayer'Class (This).getZP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (Integer (AllBinaryLayer'Class (This).getWidth));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (Integer (AllBinaryLayer'Class (This).getHeight));
   end toStringAppend;

   function toString (This : in out AllBinaryLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        AllBinaryLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_ALLBINARY_LAYER := AllBinaryLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION);
   TYPE_Id := To_Unbounded_String ("Type: ");

end org.allbinary.layer.AllBinaryLayer_Package;


