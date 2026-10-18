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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;

package body org.allbinary.graphics.color.BasicColor_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out BasicColor'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicColor'Class; alphaValue : Integer; value : Integer; name : Unbounded_String) is
      tempValue : Integer;
      basicColorUtil : BasicColorUtil_Access;
      alphaInt : Integer;
      redInt : Integer;
      greenInt : Integer;
      blueInt : Integer;
   begin
      Initialize_Fields (This);
        This.name := name;
        tempValue := 0;
        basicColorUtil := BasicColorUtil_Package.getInstance;
        if basicColorUtil.isAlpha then
            if basicColorUtil.ffOpaque then
                tempValue := Java_Or (alphaValue, value);
            else
                tempValue := Java_Or (16#00000000#, value);
            end if;
        else
            tempValue := value;
        end if;
        alphaInt := (Java_And ((Java_Shift_Right_Arithmetic (tempValue, 24)), 255));
        This.alpha := Short_Integer (alphaInt);
        This.alphaComponent := ((Float (alphaInt))) / (255.0);
        redInt := (Java_And ((Java_Shift_Right_Arithmetic (tempValue, 16)), 255));
        This.red := Short_Integer (redInt);
        This.redComponent := ((Float (redInt))) / (255.0);
        greenInt := (Java_And ((Java_Shift_Right_Arithmetic (tempValue, 8)), 255));
        This.green := Short_Integer (greenInt);
        This.greenComponent := ((Float (greenInt))) / (255.0);
        blueInt := (Java_And ((tempValue), 255));
        This.blue := Short_Integer (blueInt);
        This.blueComponent := ((Float (blueInt))) / (255.0);
        This.value := tempValue;
   end Initialize;

   function Create (alphaValue : Integer; value : Integer; name : Unbounded_String) return BasicColor_Access is
      This : constant BasicColor_Access := new BasicColor;
   begin
      BasicColor_Package.Initialize (This.all, alphaValue, value, name);
      return This;
   end Create;

   function intValue (This : in out BasicColor) return Integer is
   begin
        return This.value;
   end intValue;

   function toInt (This : in out BasicColor) return Integer is
   begin
        return This.value;
   end toInt;

   function toString (This : in out BasicColor) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("BasicColor: "));
        stringBuffer.append (To_Unbounded_String ("Alpha: "));
        stringBuffer.appendshort (This.alpha);
        stringBuffer.append (To_Unbounded_String (" Red: "));
        stringBuffer.appendshort (This.red);
        stringBuffer.append (To_Unbounded_String (" Green: "));
        stringBuffer.appendshort (This.green);
        stringBuffer.append (To_Unbounded_String (" Blue: "));
        stringBuffer.appendshort (This.blue);
        stringBuffer.append (To_Unbounded_String (" Value: "));
        stringBuffer.appendint (This.value);
        return stringBuffer.toString;
   end toString;

   function getName (This : in out BasicColor) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getRedComponent (This : in out BasicColor) return Float is
   begin
        return This.redComponent;
   end getRedComponent;

   function getGreenComponent (This : in out BasicColor) return Float is
   begin
        return This.greenComponent;
   end getGreenComponent;

   function getBlueComponent (This : in out BasicColor) return Float is
   begin
        return This.blueComponent;
   end getBlueComponent;

   function getAlphaComponent (This : in out BasicColor) return Float is
   begin
        return This.alphaComponent;
   end getAlphaComponent;

end org.allbinary.graphics.color.BasicColor_Package;


