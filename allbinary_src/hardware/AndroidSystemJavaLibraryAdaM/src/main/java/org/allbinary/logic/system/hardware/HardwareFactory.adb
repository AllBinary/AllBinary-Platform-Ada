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


package body org.allbinary.logic.system.hardware.HardwareFactory_Package is

   procedure Initialize_Fields (This : in out HardwareFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return HardwareFactory_Access is
   begin
        return HardwareFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HardwareFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HardwareFactory_Access is
      This : constant HardwareFactory_Access := new HardwareFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out HardwareFactory; os : GenericOperatingSystem_Access) return HardwareInterface_Access is
      operatingSystems : OperatingSystems_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            if (This.tsUtil.compareTo (os.getName, operatingSystems.ANDROID)) = (0) then
                return AndroidHardware_Package.Create;
            elsif (This.tsUtil.compareTo (os.getName, operatingSystems.HARMONY)) = (0) then
                return AndroidHardware_Package.Create;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Hardware Imp for: ") & os.getName));
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (To_Unbounded_String ("Ignoring Exception Returning NoHardware"), This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            return NoHardware_Package.Create;
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant HardwareFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out HardwareFactory; os : GenericOperatingSystem_Access) is
      Java_Result : constant HardwareInterface_Access := HardwareFactory'Class (This).getInstance (os);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


