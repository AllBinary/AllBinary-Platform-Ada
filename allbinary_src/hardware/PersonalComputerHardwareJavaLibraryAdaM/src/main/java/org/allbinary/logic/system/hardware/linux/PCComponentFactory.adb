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


with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.system.hardware.components.linux.Bridge_Package; use org.allbinary.logic.system.hardware.components.linux.Bridge_Package;
with org.allbinary.logic.system.hardware.components.linux.Ethernet_Package; use org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;
with org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package; use org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;
with org.allbinary.logic.system.hardware.components.linux.Media_Package; use org.allbinary.logic.system.hardware.components.linux.Media_Package;
with org.allbinary.logic.system.hardware.components.linux.PCI_Package; use org.allbinary.logic.system.hardware.components.linux.PCI_Package;
with org.allbinary.logic.system.hardware.components.linux.Unknown_Package; use org.allbinary.logic.system.hardware.components.linux.Unknown_Package;
with org.allbinary.logic.system.hardware.components.linux.Usb_Package; use org.allbinary.logic.system.hardware.components.linux.Usb_Package;
with org.allbinary.logic.system.hardware.components.linux.Video_Package; use org.allbinary.logic.system.hardware.components.linux.Video_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package is

   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package Bridge_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Bridge_Package;
   package Ethernet_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;
   package HardDriveController_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;
   package Media_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Media_Package;
   package PCI_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.PCI_Package;
   package Unknown_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Unknown_Package;
   package Usb_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Usb_Package;
   package Video_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Video_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PCComponentFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.componentFactory := ComponentFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PCComponentFactory_Access is
   begin
        return PCComponentFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PCComponentFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PCComponentFactory_Access is
      This : constant PCComponentFactory_Access := new PCComponentFactory;
   begin
      PCComponentFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String) return HardwareComponentInterface_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (component) /= (Null_Unbounded_String) then
                if (Java_Compare_To (component, This.componentFactory.ETHERNET.toString)) = (0) then
                    return HardwareComponentInterface_Access (Ethernet_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.BRIDGE.toString)) = (0) then
                    return HardwareComponentInterface_Access (Bridge_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.IDE.toString)) = (0) then
                    return HardwareComponentInterface_Access (HardDriveController_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.MULTIMEDIA.toString)) = (0) then
                    return HardwareComponentInterface_Access (Media_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.SCSI.toString)) = (0) then
                    return HardwareComponentInterface_Access (HardDriveController_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.USB.toString)) = (0) then
                    return HardwareComponentInterface_Access (Usb_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.VGA.toString)) = (0) then
                    return HardwareComponentInterface_Access (Video_Package.Create (componentData));
                elsif (Java_Compare_To (component, This.componentFactory.PCI.toString)) = (0) then
                    return HardwareComponentInterface_Access (PCI_Package.Create (componentData));
                end if;
            end if;
            return HardwareComponentInterface_Access (Unknown_Package.Create (componentData));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, PCComponentFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return HardwareComponentInterface_Access (Unknown_Package.Create (commonStrings.EXCEPTION_Id));
                end;
        end;
   end getInstance;

   function getComponentType (This : in out PCComponentFactory; component : Unbounded_String) return Unbounded_String is
   begin
        if (Java_Index_Of (component, Java_Image (This.componentFactory.ETHERNET.toString))) >= (0) then
            return This.componentFactory.ETHERNET.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.BRIDGE.toString))) >= (0) then
            return This.componentFactory.BRIDGE.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.IDE.toString))) >= (0) then
            return This.componentFactory.IDE.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.MULTIMEDIA.toString))) >= (0) then
            return This.componentFactory.MULTIMEDIA.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.SCSI.toString))) >= (0) then
            return This.componentFactory.SCSI.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.USB.toString))) >= (0) then
            return This.componentFactory.USB.toString;
        elsif (Java_Index_Of (component, Java_Image (This.componentFactory.VGA.toString))) >= (0) then
            return This.componentFactory.VGA.toString;
        elsif (Java_Compare_To (component, This.componentFactory.PCI.toString)) = (0) then
            return This.componentFactory.PCI.toString;
        end if;
        return This.componentFactory.UNKNOWN.toString;
   end getComponentType;

   procedure getInstance (This : in out PCComponentFactory; component : Unbounded_String; componentData : Unbounded_String) is
      Java_Result : constant HardwareComponentInterface_Access := PCComponentFactory'Class (This).getInstance (component, componentData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getComponentType (This : in out PCComponentFactory; component : Unbounded_String) is
      Java_Result : constant Unbounded_String := PCComponentFactory'Class (This).getComponentType (component);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponentType;

begin
   null;
   instance := PCComponentFactory_Package.Create;

end org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;


