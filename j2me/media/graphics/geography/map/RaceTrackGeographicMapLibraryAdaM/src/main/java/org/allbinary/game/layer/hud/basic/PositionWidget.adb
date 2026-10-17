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


package body org.allbinary.game.layer.hud.basic.PositionWidget_Package is

   procedure Initialize_Fields (This : in out PositionWidget'Class) is
   begin
      null;
      This.position := 0;
      This.positionString := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out PositionWidget'Class; position : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, 2, basicColor);
        Initialize_Fields (This);
        This.updateMaxHeight := 10;
        This.updateMaxWidth := 40;
   end Initialize;

   function Create (position : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor'Class) return PositionWidget_Access is
      This : constant PositionWidget_Access := new PositionWidget;
   begin
      PositionWidget_Package.Initialize (This.all, position, location, direction, basicColor_Param);
      return This;
   end Create;

   function get (This : in out PositionWidget) return Integer is
   begin
        return This.position;
   end get;

   procedure set (This : in out PositionWidget; position : Integer) is
   begin
        This.position := position;
        This.positionString := PositionWidget_Package.toString (This.get);
   end set;

   procedure paint (This : in out PositionWidget; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicHud (This).paintString (graphics, This.positionString);
   end paint;

   function toString (position : Integer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Java_Image (position)));
        if (position) = (1) then
            stringBuffer.append (To_Unbounded_String ("st"));
        elsif (position) = (2) then
            stringBuffer.append (To_Unbounded_String ("nd"));
        elsif (position) = (3) then
            stringBuffer.append (To_Unbounded_String ("rd"));
        else
            stringBuffer.append (To_Unbounded_String ("th"));
        end if;
        return stringBuffer.toString;
   end toString;

   procedure toString (position : Integer) is
      Java_Result : constant Unbounded_String := toString (position);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.layer.hud.basic.PositionWidget_Package;


