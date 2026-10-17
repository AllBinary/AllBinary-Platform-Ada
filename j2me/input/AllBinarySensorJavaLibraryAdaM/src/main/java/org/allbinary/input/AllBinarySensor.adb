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


package body org.allbinary.input.AllBinarySensor_Package is

   procedure Initialize_Fields (This : in out AllBinarySensor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinarySensor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinarySensor_Access is
      This : constant AllBinarySensor_Access := new AllBinarySensor;
   begin
      AllBinarySensor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out AllBinarySensor) is
   begin
        null;
   end init;

   --  throws Exception
   procedure update (This : in out AllBinarySensor) is
   begin
        null;
   end update;

   procedure setMax (max : Integer) is
   begin
        AllBinarySensor_Package.max := max;
   end setMax;

   function getMax return Integer is
   begin
        return AllBinarySensor_Package.max;
   end getMax;

   function getId (This : in out AllBinarySensor) return Integer is
   begin
        return AllBinarySensor_Package.getMax;
   end getId;

   procedure shutdown (This : in out AllBinarySensor) is
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinarySensor_Access'(This'Unchecked_Access), To_Unbounded_String ("shutdown"));
   end shutdown;

   procedure onSensorChange (This : in out AllBinarySensor) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, AllBinarySensor_Access'(This'Unchecked_Access));
   end onSensorChange;

begin
   null;
   NULL_ALLBINARY_SENSOR := AllBinarySensor_Package.Create;
   max := 100;

end org.allbinary.input.AllBinarySensor_Package;


