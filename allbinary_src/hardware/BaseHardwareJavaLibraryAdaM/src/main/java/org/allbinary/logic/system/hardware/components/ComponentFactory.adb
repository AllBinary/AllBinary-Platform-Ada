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


package body org.allbinary.logic.system.hardware.components.ComponentFactory_Package is

   procedure Initialize_Fields (This : in out ComponentFactory'Class) is
   begin
      null;
      This.VGA := Component_Package.Create (To_Unbounded_String ("VGA"));
      This.IDE := Component_Package.Create (To_Unbounded_String ("IDE"));
      This.SCSI := Component_Package.Create (To_Unbounded_String ("SCSI"));
      This.BRIDGE := Component_Package.Create (To_Unbounded_String ("bridge"));
      This.ETHERNET := Component_Package.Create (To_Unbounded_String ("Ethernet"));
      This.USB := Component_Package.Create (To_Unbounded_String ("USB"));
      This.MULTIMEDIA := Component_Package.Create (To_Unbounded_String ("Multimedia"));
      This.PCI := Component_Package.Create (To_Unbounded_String ("PCI"));
      This.RAID := Component_Package.Create (To_Unbounded_String ("RAID"));
      This.SMBUS := Component_Package.Create (To_Unbounded_String ("SMBus"));
      This.PIC := Component_Package.Create (To_Unbounded_String ("PIC"));
      This.Class := Component_Package.Create (To_Unbounded_String ("Class"));
      This.UNKNOWN := Component_Package.Create (CommonStrings_Package.getInstance.UNKNOWN);
   end Initialize_Fields;

   procedure Initialize (This : in out ComponentFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ComponentFactory_Access is
      This : constant ComponentFactory_Access := new ComponentFactory;
   begin
      ComponentFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ComponentFactory_Access is
   begin
        return ComponentFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := ComponentFactory_Package.Create;

end org.allbinary.logic.system.hardware.components.ComponentFactory_Package;


