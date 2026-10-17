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


package body org.allbinary.game.ai.path.BasicDirectionAIHelper_Package is

   procedure Initialize_Fields (This : in out BasicDirectionAIHelper'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicDirectionAIHelper'Class; name : Unbounded_String; angleInfo : AngleInfo_Access) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.angleInfo := angleInfo;
   end Initialize;

   function Create (name : Unbounded_String; angleInfo : AngleInfo_Access) return BasicDirectionAIHelper_Access is
      This : constant BasicDirectionAIHelper_Access := new BasicDirectionAIHelper;
   begin
      BasicDirectionAIHelper_Package.Initialize (This.all, name, angleInfo);
      return This;
   end Create;

   function turnAI (This : in out BasicDirectionAIHelper; frame : Integer) return Integer is
      keyDirection : Integer;
      directionAngle : Integer;
      angle : Short_Integer;
      degrees : Integer;
   begin
        keyDirection := -(1);
        directionAngle := This.angleInfo.getAngleIncrementInfo.getFrameAngle (frame);
        angle := This.angleInfo.getAngle;
        degrees := abs ((directionAngle) - (Integer (angle)));
        if (degrees) < (180) then
            if (Integer (angle)) > (directionAngle) then
                keyDirection := Canvas_Package.LEFT;
            elsif (Integer (angle)) < (directionAngle) then
                keyDirection := Canvas_Package.RIGHT;
            end if;
        else
            if (Integer (angle)) > (directionAngle) then
                keyDirection := Canvas_Package.RIGHT;
            elsif (Integer (angle)) < (directionAngle) then
                keyDirection := Canvas_Package.LEFT;
            end if;
        end if;
        return keyDirection;
   end turnAI;

   function getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer) return Integer is
      angle : Short_Integer;
   begin
        angle := Short_Integer (This.angleInfo.getAngleIncrementInfo.getFrameAngle (frame.intValue));
        if (This.angleInfo.getAngle) /= (angle) then
            return This.turnAI (frame.intValue);
        else
            return Canvas_Package.UP;
        end if;
   end getAIKeyPressed;

   function getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData : Direction_Access) return Integer is
      keyDirection : Integer;
      angleIncrementInfo : AngleIncrementInfo_Access;
      directionFactory : DirectionFactory_Access;
   begin
        keyDirection := -(1);
        angleIncrementInfo := This.angleInfo.getAngleIncrementInfo;
        directionFactory := DirectionFactory_Package.getInstance;
        if (geographicMapDirectionData) = (directionFactory.DOWN) then
            keyDirection := This.getAIKeyPressed (angleIncrementInfo.DOWN_FRAME);
        elsif (geographicMapDirectionData) = (directionFactory.UP) then
            keyDirection := This.getAIKeyPressed (angleIncrementInfo.UP_FRAME);
        elsif (geographicMapDirectionData) = (directionFactory.LEFT) then
            keyDirection := This.getAIKeyPressed (angleIncrementInfo.LEFT_FRAME);
        elsif (geographicMapDirectionData) = (directionFactory.RIGHT) then
            keyDirection := This.getAIKeyPressed (angleIncrementInfo.RIGHT_FRAME);
        end if;
        return keyDirection;
   end getAIKeyPressedFromDirection;

   function getAngleInfoP (This : in out BasicDirectionAIHelper) return AngleInfo_Access is
   begin
        return This.angleInfo;
   end getAngleInfoP;

   function getName (This : in out BasicDirectionAIHelper) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure turnAI (This : in out BasicDirectionAIHelper; frame : Integer) is
      Java_Result : constant Integer := BasicDirectionAIHelper'Class (This).turnAI (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end turnAI;

   procedure getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer) is
      Java_Result : constant Integer := BasicDirectionAIHelper'Class (This).getAIKeyPressed (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAIKeyPressed;

   procedure getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData : Direction_Access) is
      Java_Result : constant Integer := BasicDirectionAIHelper'Class (This).getAIKeyPressedFromDirection (geographicMapDirectionData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAIKeyPressedFromDirection;

end org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;


