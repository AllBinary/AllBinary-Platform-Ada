--  Generated Code Do Not Modify


package body org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package is

   procedure Initialize_Fields (This : in out PreciseConstantVelocityMovement'Class) is
   begin
      null;
      This.accumulatedX := 0;
      This.accumulatedY := 0;
      This.accumulatedZ := 0;
      This.factorValue := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_VALUE;
   end Initialize_Fields;


   procedure Initialize (This : in out PreciseConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, basicDecimal, velocityProperties);
        Initialize_Fields (This);
   end Initialize;

   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return PreciseConstantVelocityMovement_Access is
      This : constant PreciseConstantVelocityMovement_Access := new PreciseConstantVelocityMovement;
   begin
      PreciseConstantVelocityMovement_Package.Initialize (This.all, basicDecimal, velocityProperties);
      return This;
   end Create;

   procedure init (This : in out PreciseConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer) is
   begin
        null;
   end init;

   --  throws Exception
   procedure process (This : in out PreciseConstantVelocityMovement; layer : AllBinaryGameLayer_Access) is
      mathUtil : MathUtil_Access;
      velocityProperties : BasicVelocityProperties_Access;
   begin
        mathUtil := MathUtil_Package.getInstance;
        velocityProperties := This.getVelocityProperties;
        This.accumulatedX := Integer (((This.accumulatedX) + (velocityProperties.getVelocityXBasicDecimalP.getUnscaled)));
        This.accumulatedY := Integer (((This.accumulatedY) + (velocityProperties.getVelocityYBasicDecimalP.getUnscaled)));
        This.accumulatedZ := Integer (((This.accumulatedZ) + (velocityProperties.getVelocityZBasicDecimalP.getUnscaled)));
        layer.moveDXYZ ((This.accumulatedX) / (This.factorValue), (This.accumulatedY) / (This.factorValue), (This.accumulatedZ) / (This.factorValue));
        if (mathUtil.abs_Id (This.accumulatedX)) > (This.factorValue) then
            This.accumulatedX := 0;
        end if;
        if (mathUtil.abs_Id (This.accumulatedY)) > (This.factorValue) then
            This.accumulatedY := 0;
        end if;
        if (mathUtil.abs_Id (This.accumulatedZ)) > (This.factorValue) then
            This.accumulatedZ := 0;
        end if;
   end process;

end org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package;


