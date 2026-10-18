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



package body org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package is

   procedure Initialize_Fields (This : in out CpuInfo'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CpuInfo'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return CpuInfo_Access is
      This : constant CpuInfo_Access := new CpuInfo;
   begin
      CpuInfo_Package.Initialize (This.all, name);
      return This;
   end Create;

   function toString (This : in out CpuInfo) return Unbounded_String is
   begin
        return This.name;
   end toString;

begin
   null;
   PROCESSOR := CpuInfo_Package.Create (To_Unbounded_String ("processor"));
   VENDORID := CpuInfo_Package.Create (To_Unbounded_String ("vendor_id"));
   CPUFAMILY := CpuInfo_Package.Create (To_Unbounded_String ("cpu family"));
   MODEL := CpuInfo_Package.Create (To_Unbounded_String ("model"));
   MODELNAME := CpuInfo_Package.Create (To_Unbounded_String ("model name"));
   STEPPING := CpuInfo_Package.Create (To_Unbounded_String ("stepping"));
   CPUMHZ := CpuInfo_Package.Create (To_Unbounded_String ("cpu MHz"));
   CACHESIZE := CpuInfo_Package.Create (To_Unbounded_String ("cache size"));
   FDIVBUG := CpuInfo_Package.Create (To_Unbounded_String ("fdiv_bug"));
   HLTBUG := CpuInfo_Package.Create (To_Unbounded_String ("hlt_bug"));
   F00FBUG := CpuInfo_Package.Create (To_Unbounded_String ("f00f_bug"));
   COMABUG := CpuInfo_Package.Create (To_Unbounded_String ("coma_bug"));
   FPU := CpuInfo_Package.Create (To_Unbounded_String ("fpu"));
   FPUEXCEPTION := CpuInfo_Package.Create (To_Unbounded_String ("fpu_exception"));
   CPUIDLEVEL := CpuInfo_Package.Create (To_Unbounded_String ("cache size"));
   WP := CpuInfo_Package.Create (To_Unbounded_String ("yes"));
   FLAGS := CpuInfo_Package.Create (To_Unbounded_String ("flags"));
   BOGOMIPS := CpuInfo_Package.Create (To_Unbounded_String ("bogomips"));

end org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package;


