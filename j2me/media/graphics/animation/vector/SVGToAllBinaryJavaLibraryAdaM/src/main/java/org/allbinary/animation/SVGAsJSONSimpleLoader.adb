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


package body org.allbinary.animation.SVGAsJSONSimpleLoader_Package is

   procedure Initialize_Fields (This : in out SVGAsJSONSimpleLoader'Class) is
   begin
      null;
      This.graphicsStrings := GraphicsStrings_Package.getInstance;
      This.shapeTypeFactory := ShapeTypeFactory_Package.getInstance;
      This.KEY_SVG := To_Unbounded_String ("svg");
      This.KEY_X1 := To_Unbounded_String ("x1");
      This.KEY_Y1 := To_Unbounded_String ("y1");
      This.KEY_X2 := To_Unbounded_String ("x2");
      This.KEY_Y2 := To_Unbounded_String ("y2");
      This.KEY_CX := To_Unbounded_String ("cx");
      This.KEY_CY := To_Unbounded_String ("cy");
      This.KEY_R := To_Unbounded_String ("r");
      This.KEY_X := PositionStrings_Package.getInstance.X;
      This.KEY_Y := PositionStrings_Package.getInstance.Y;
      This.ERROR_PARSE_SVG_JSON := To_Unbounded_String ("Unable to parse SVG JSON");
      This.ERROR_MISSING_KEY_PREFIX := To_Unbounded_String ("Missing key: ");
      This.ERROR_INVALID_NUMBER_PREFIX := To_Unbounded_String ("Invalid number for key: ");
      This.ERROR_EXPECTED_OBJECT_PREFIX := To_Unbounded_String ("Expected object for: ");
      This.EMPTY_POINTS := PrimitiveIntUtil_Package.getTwoDimensionalArrayInstance;
      This.SHAPE_SEPARATOR := new Integer_Array'(1000, 1000);
      This.CIRCLE_SEGMENTS := 16;
   end Initialize_Fields;

   procedure Initialize (This : in out SVGAsJSONSimpleLoader'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SVGAsJSONSimpleLoader_Access is
      This : constant SVGAsJSONSimpleLoader_Access := new SVGAsJSONSimpleLoader;
   begin
      SVGAsJSONSimpleLoader_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SVGAsJSONSimpleLoader_Access is
   begin
        return SVGAsJSONSimpleLoader_Package.instance;
   end getInstance;

   --  throws Exception
   function load (This : in out SVGAsJSONSimpleLoader; svgAsJson : Unbounded_String) return Integer_Array_Access_Array_Access is
      root : JSONObject_Access;
      svgValue : Java_Object_Access;
      svg : JSONObject_Access;
      pointVector : BasicArrayList_Access;
      keys : Enumeration_Access;
      key : Unbounded_String;
      value : Java_Object_Access;
   begin
        if (svgAsJson) = (Null_Unbounded_String) then
            return This.EMPTY_POINTS;
        end if;
        begin
            root := JSONObject_Package.Create (svgAsJson);
            svgValue := root.opt (This.KEY_SVG);
            svg := (if (svgValue) = (null) then root else This.asObject (svgValue, This.KEY_SVG));
            pointVector := BasicArrayListD_Package.Create;
            keys := svg.keys;
            while keys.hasMoreElements loop
                key := Unbounded_String (keys.nextElement);
                value := svg.opt (key);
                if This.shapeTypeFactory.KEY_LINE.equals (key) then
                    This.addShapes (pointVector, value, This.shapeTypeFactory.LINE);
                elsif This.shapeTypeFactory.equals (key) then
                    This.addShapes (pointVector, value, This.shapeTypeFactory.CIRCLE);
                elsif (This.shapeTypeFactory.KEY_RECT.equals (key)) or else (This.shapeTypeFactory.KEY_RECTANGLE.equals (key)) then
                    This.addShapes (pointVector, value, This.shapeTypeFactory.RECTANGLE);
                end if;
            end loop;
            return This.toPoints (pointVector);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (Java_New_Exception ("IllegalArgumentException", This.ERROR_PARSE_SVG_JSON, e));
                end;
        end;
   end load;

   --  throws Exception
   procedure addShapes (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      value : Java_Object_Access := Java_Object_Access (value_Param);
      shapeType : ShapeType_Access := ShapeType_Access (shapeType_Param);
      array_Id : JSONArray_Access;
      size : Integer;
      index : Integer;
   begin
        if (value.all in JSONArray_Package.JSONArray'Class) then
            array_Id := JSONArray_Access (value);
            size := array_Id.length;
            for index in 0 .. (size) - 1 loop
                This.addShape (pointVector, array_Id.opt (index), shapeType);
            end loop;
        else
            This.addShape (pointVector, value, shapeType);
        end if;
   end addShapes;

   --  throws Exception
   procedure addShape (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; value_Param : access Java_Object'Class; shapeType_Param : access ShapeType'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      value : Java_Object_Access := Java_Object_Access (value_Param);
      shapeType : ShapeType_Access := ShapeType_Access (shapeType_Param);
      shape : JSONObject_Access;
   begin
        shape := This.asObject (value, shapeType.getName);
        if (shapeType) = (This.shapeTypeFactory.LINE) then
            This.addLine (pointVector, shape);
        elsif (shapeType) = (This.shapeTypeFactory.CIRCLE) then
            This.addCircle (pointVector, shape);
        else
            This.addRectangle (pointVector, shape);
        end if;
   end addShape;

   --  throws Exception
   procedure addLine (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; line_Param : access JSONObject'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      line : JSONObject_Access := JSONObject_Access (line_Param);
   begin
        This.addPoint (pointVector, This.readInt (line, This.KEY_X1), This.readInt (line, This.KEY_Y1));
        This.addPoint (pointVector, This.readInt (line, This.KEY_X2), This.readInt (line, This.KEY_Y2));
        This.addSeparator (pointVector);
   end addLine;

   --  throws Exception
   procedure addCircle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; circle_Param : access JSONObject'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      circle : JSONObject_Access := JSONObject_Access (circle_Param);
      cx : Integer;
      cy : Integer;
      radius : Integer;
      angle : Long_Float;
      x : Integer;
      y : Integer;
      index : Integer;
   begin
        cx := This.readInt (circle, This.KEY_CX);
        cy := This.readInt (circle, This.KEY_CY);
        radius := This.readInt (circle, This.KEY_R);
        for index in 0 .. This.CIRCLE_SEGMENTS loop
            angle := ((((Math_Package.PI) * (2.0)) * (index))) / (This.CIRCLE_SEGMENTS);
            x := Integer (Long_Long_Integer (Long_Float'Rounding ((cx) + (((Ada.Numerics.Long_Elementary_Functions.Cos (angle)) * (radius))))));
            y := Integer (Long_Long_Integer (Long_Float'Rounding ((cy) + (((Ada.Numerics.Long_Elementary_Functions.Sin (angle)) * (radius))))));
            This.addPoint (pointVector, x, y);
        end loop;
        This.addSeparator (pointVector);
   end addCircle;

   --  throws Exception
   procedure addRectangle (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; rectangle_Param : access JSONObject'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      rectangle : JSONObject_Access := JSONObject_Access (rectangle_Param);
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer;
   begin
        x := This.readInt (rectangle, This.KEY_X, 0);
        y := This.readInt (rectangle, This.KEY_Y, 0);
        width := This.readInt (rectangle, This.graphicsStrings.WIDTH);
        height := This.readInt (rectangle, This.graphicsStrings.HEIGHT);
        This.addPoint (pointVector, x, y);
        This.addPoint (pointVector, (x) + (width), y);
        This.addPoint (pointVector, (x) + (width), (y) + (height));
        This.addPoint (pointVector, x, (y) + (height));
        This.addPoint (pointVector, x, y);
        This.addSeparator (pointVector);
   end addRectangle;

   procedure addPoint (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class; x : Integer; y : Integer) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
   begin
        pointVector.add (new Integer_Array'(x, y));
   end addPoint;

   procedure addSeparator (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class) is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
   begin
        pointVector.add (new Integer_Array'(This.SHAPE_SEPARATOR (0), This.SHAPE_SEPARATOR (1)));
   end addSeparator;

   --  throws Exception
   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String) return Integer is
      anyType : JSONObject_Access := JSONObject_Access (anyType_Param);
      value : Java_Object_Access;
   begin
        value := anyType.get (key);
        if (value) = (null) then
            Java_Throw (Java_New_Exception ("IllegalArgumentException", This.ERROR_MISSING_KEY_PREFIX & key));
        end if;
        return This.toInt (value, key);
   end readInt;

   function readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String; defaultValue : Integer) return Integer is
      anyType : JSONObject_Access := JSONObject_Access (anyType_Param);
      value : Java_Object_Access;
   begin
        begin
            if anyType.has (key) then
                value := anyType.get (key);
                return This.toInt (value, key);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
                end;
        end;
        return defaultValue;
   end readInt;

   function toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String) return Integer is
      value : Java_Object_Access := Java_Object_Access (value_Param);
   begin
        if (value.all in Number_Package.Number'Class) then
            return Integer (Long_Long_Integer (Long_Float'Rounding ((Number_Access (value)).doubleValue)));
        end if;
        if (value.all in String_Package.String'Class) then
            return Integer (Long_Long_Integer (Long_Float'Rounding (Long_Float'Value (To_String (Unbounded_String (value))))));
        end if;
        Java_Throw (Java_New_Exception ("IllegalArgumentException", This.ERROR_INVALID_NUMBER_PREFIX & key));
   end toInt;

   function asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String) return JSONObject_Access is
      value : Java_Object_Access := Java_Object_Access (value_Param);
   begin
        if (value.all in JSONObject_Package.JSONObject'Class) then
            return JSONObject_Access (value);
        end if;
        Java_Throw (Java_New_Exception ("IllegalArgumentException", This.ERROR_EXPECTED_OBJECT_PREFIX & name));
   end asObject;

   function toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class) return Integer_Array_Access_Array_Access is
      pointVector : BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      points : Integer_Array_Access_Array_Access;
      point : Integer_Array_Access;
      index : Integer;
   begin
        if (pointVector.size) = (0) then
            return This.EMPTY_POINTS;
        end if;
        points := new Integer_Array_Access_Array'(0 .. (pointVector.size) - 1 => new Integer_Array'(0 .. (2) - 1 => 0));
        for index in 0 .. (pointVector.size) - 1 loop
            point := Integer_Array_Access (pointVector.get (index));
            points (index) := point;
        end loop;
        return points;
   end toPoints;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
      svgAsJson : Unbounded_String;
      points : Integer_Array_Access_Array_Access;
      stringBuilder : StringMaker_Access;
      size : Integer;
      size2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        svgAsJson := To_Unbounded_String ("{""svg"": {" & ASCII.LF & "") & To_Unbounded_String ("    ""rect"": {" & ASCII.LF & "") & To_Unbounded_String ("        ""width"": 20," & ASCII.LF & "") & To_Unbounded_String ("        ""fill"": ""#008c00""," & ASCII.LF & "") & To_Unbounded_String ("        ""height"": 20" & ASCII.LF & "") & To_Unbounded_String ("    }," & ASCII.LF & "") & To_Unbounded_String ("    ""xmlns"": ""http://www.w3.org/2000/svg""," & ASCII.LF & "") & To_Unbounded_String ("    ""width"": 20," & ASCII.LF & "") & To_Unbounded_String ("    ""height"": 20" & ASCII.LF & "") & To_Unbounded_String ("}}" & ASCII.LF & "");
        points := SVGAsJSONSimpleLoader_Package.getInstance.load (svgAsJson);
        stringBuilder := StringMaker_Package.Create;
        size := points'Length;
        for index in 0 .. (size) - 1 loop
            size2 := points (index)'Length;
            for index2 in 0 .. (size2) - 1 loop
                stringBuilder.appendint (Integer (points (index) (index2)));
                stringBuilder.append (CommonSeps_Package.getInstance.COMMA);
            end loop;
        end loop;
        Ada.Text_IO.Put_Line (Java_Image (stringBuilder.toString));
   end main;

   procedure load (This : in out SVGAsJSONSimpleLoader; svgAsJson : Unbounded_String) is
      Java_Result : constant Integer_Array_Access_Array_Access := SVGAsJSONSimpleLoader'Class (This).load (svgAsJson);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end load;

   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String) is
      Java_Result : constant Integer := SVGAsJSONSimpleLoader'Class (This).readInt (anyType_Param, key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readInt;

   procedure readInt (This : in out SVGAsJSONSimpleLoader; anyType_Param : access JSONObject'Class; key : Unbounded_String; defaultValue : Integer) is
      Java_Result : constant Integer := SVGAsJSONSimpleLoader'Class (This).readInt (anyType_Param, key, defaultValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readInt;

   procedure toInt (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; key : Unbounded_String) is
      Java_Result : constant Integer := SVGAsJSONSimpleLoader'Class (This).toInt (value_Param, key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toInt;

   procedure asObject (This : in out SVGAsJSONSimpleLoader; value_Param : access Java_Object'Class; name : Unbounded_String) is
      Java_Result : constant JSONObject_Access := SVGAsJSONSimpleLoader'Class (This).asObject (value_Param, name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end asObject;

   procedure toPoints (This : in out SVGAsJSONSimpleLoader; pointVector_Param : access BasicArrayList'Class) is
      Java_Result : constant Integer_Array_Access_Array_Access := SVGAsJSONSimpleLoader'Class (This).toPoints (pointVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toPoints;

begin
   null;
   instance := SVGAsJSONSimpleLoader_Package.Create;

end org.allbinary.animation.SVGAsJSONSimpleLoader_Package;


