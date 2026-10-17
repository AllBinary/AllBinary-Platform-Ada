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
      This.viewPositionEvent := ViewPositionEvent_Package.Create (This'Unchecked_Access);
      This.halfWidth := 0;
      This.halfHeight := 0;
      
      This.viewPosition := ViewPositionBase_Package.NULL_VIEW_POSITION;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayer'Class; name : Unbounded_String; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
      localName : Unbounded_String;
      point : GPoint_Access;
   begin
        Layer_Package.Initialize (This, rectangle.getWidth, rectangle.getHeight);
        Initialize_Fields (This);
        localName := Null_Unbounded_String;
        if (name) = (Null_Unbounded_String) then
            localName := To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
        else
            localName := StringMaker_Package.Create.append (name).append (CommonSeps_Package.getInstance.COLON).append (Integer_Package.toHexString (TsUtil_Package.getInstance.hashCode (This'Unchecked_Access))).toString;
        end if;
        This.name := localName;
        point := rectangle.getPoint;
        This.setPosition (point.getX, point.getY, point.getZ);
        This.setHalfWidth ((Java_Shift_Right_Arithmetic (This.getWidth, 1)));
        This.setHalfHeight ((Java_Shift_Right_Arithmetic (This.getHeight, 1)));
        This.viewPosition := viewPosition;
        This.viewPosition.setAllbinaryLayer (This'Unchecked_Access);
   end Initialize;

   function Create (name : Unbounded_String; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return AllBinaryLayer_Access is
      This : constant AllBinaryLayer_Access := new AllBinaryLayer;
   begin
      Initialize (This.all, name, rectangle, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure onChangeEvent (This : in out AllBinaryLayer; layerManagerEvent : ViewPositionEvent_Access) is
   begin
        null;
   end onChangeEvent;

   procedure paintThreed (This : in out AllBinaryLayer; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

   function getX2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (This.getXP) + (This.getWidth);
   end getX2;

   function getY2 (This : in out AllBinaryLayer) return Integer is
   begin
        return (This.getYP) + (This.getHeight);
   end getY2;

   function getZ2 (This : in out AllBinaryLayer) return Integer is
   begin
        return Integer (((This.getZP) + (This.getDepth)));
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
        return (Integer (This.getDepth)) / (2);
   end getHalfDepth;

   function getViewPosition (This : in out AllBinaryLayer) return ViewPositionBase_Access is
   begin
        return This.viewPosition;
   end getViewPosition;

   procedure setViewPosition (This : in out AllBinaryLayer; viewPosition : ViewPositionBase_Access) is
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

   procedure toStringAppend (This : in out AllBinaryLayer; stringBuffer : StringMaker_Access) is
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      commonLabels : CommonLabels_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer.append (This.getName);
        stringBuffer.append (commonSeps.COLON);
        stringBuffer.append (AllBinaryLayer_Package.TYPE_Id);
        stringBuffer.appendint (This.getType);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (Integer (This.getXP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (Integer (This.getYP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (Integer (This.getZP));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (Integer (This.getWidth));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (Integer (This.getHeight));
   end toStringAppend;

   function toString (This : in out AllBinaryLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        This.toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

   procedure getX2 (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getX2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getX2;

   procedure getY2 (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getY2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getY2;

   procedure getZ2 (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getZ2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZ2;

   procedure getName (This : in out AllBinaryLayer) is
      Java_Result : constant Unbounded_String := AllBinaryLayer'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getHalfWidth (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getHalfWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHalfWidth;

   procedure getHalfHeight (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getHalfHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHalfHeight;

   procedure getHalfDepth (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getHalfDepth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHalfDepth;

   procedure getViewPosition (This : in out AllBinaryLayer) is
      Java_Result : constant ViewPositionBase_Access := AllBinaryLayer'Class (This).getViewPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getViewPosition;

   procedure getGroupInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Group_Access_Array_Access := AllBinaryLayer'Class (This).getGroupInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupInterface;

   procedure implmentsTickableInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Boolean := AllBinaryLayer'Class (This).implmentsTickableInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsTickableInterface;

   procedure implmentsGameInputInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Boolean := AllBinaryLayer'Class (This).implmentsGameInputInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsGameInputInterface;

   procedure implmentsArtificialIntelligenceCompositeInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Boolean := AllBinaryLayer'Class (This).implmentsArtificialIntelligenceCompositeInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsArtificialIntelligenceCompositeInterface;

   procedure implmentsCollidableInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Boolean := AllBinaryLayer'Class (This).implmentsCollidableInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsCollidableInterface;

   procedure implementsThreedInterface (This : in out AllBinaryLayer) is
      Java_Result : constant Boolean := AllBinaryLayer'Class (This).implementsThreedInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implementsThreedInterface;

   procedure getType (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

   procedure getMultiPlayerType (This : in out AllBinaryLayer) is
      Java_Result : constant Integer := AllBinaryLayer'Class (This).getMultiPlayerType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultiPlayerType;

   procedure toString (This : in out AllBinaryLayer) is
      Java_Result : constant Unbounded_String := AllBinaryLayer'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   NULL_ALLBINARY_LAYER := AllBinaryLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION);
   TYPE_Id := To_Unbounded_String ("Type: ");

end org.allbinary.layer.AllBinaryLayer_Package;


