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


with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;

package body org.allbinary.math.AngleIncrementInfoFactory_Package is

   procedure Initialize_Fields (This : in out AngleIncrementInfoFactory'Class) is
   begin
      null;
      This.angleIncrementInfo := new AngleIncrementInfo_Access_Array'(0 .. (Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE)) - 1 => null);
   end Initialize_Fields;

   procedure Initialize (This : in out AngleIncrementInfoFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AngleIncrementInfoFactory_Access is
      This : constant AngleIncrementInfoFactory_Access := new AngleIncrementInfoFactory;
   begin
      AngleIncrementInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AngleIncrementInfoFactory_Access is
   begin
        return AngleIncrementInfoFactory_Package.instance;
   end getInstance;

   function getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer) return AngleIncrementInfo_Access is
      halfAngleIncrement : Integer;
      angleIncrementInfo : AngleIncrementInfo_Access;
      angleIncrementInfoCanBeNull : AngleIncrementInfo_Access;
   begin
        halfAngleIncrement := (Java_Shift_Right_Arithmetic (Integer (angleIncrement), 1));
        angleIncrementInfo := null;
        angleIncrementInfoCanBeNull := This.angleIncrementInfo (halfAngleIncrement);
        if (angleIncrementInfoCanBeNull) = (null) then
            angleIncrementInfo := AngleIncrementInfo_Package.Create (angleIncrement);
            This.angleIncrementInfo (halfAngleIncrement) := angleIncrementInfo;
            return angleIncrementInfo;
        else
            angleIncrementInfo := angleIncrementInfoCanBeNull;
        end if;
        return angleIncrementInfo;
   end getAt;

   procedure getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer) is
      Java_Result : constant AngleIncrementInfo_Access := AngleIncrementInfoFactory'Class (This).getAt (angleIncrement => angleIncrement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

begin
   null;
   instance := AngleIncrementInfoFactory_Package.Create;

end org.allbinary.math.AngleIncrementInfoFactory_Package;


