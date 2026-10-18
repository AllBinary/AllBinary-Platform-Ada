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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.system.Runtime_Package; use org.allbinary.system.Runtime_Package;

package body org.allbinary.system.Memory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out Memory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Memory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Memory_Access is
      This : constant Memory_Access := new Memory;
   begin
      Memory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInfo return Unbounded_String is
      stringBuffer : StringMaker_Access;
      maxUtilizedMemoryAvailable : Long_Long_Integer;
      memoryUsed : Long_Long_Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        maxUtilizedMemoryAvailable := Runtime_Package.getRuntime.maxMemory;
        memoryUsed := Runtime_Package.getRuntime.totalMemory;
        stringBuffer.append (To_Unbounded_String ("APK Memory: Available: "));
        stringBuffer.appendlong (maxUtilizedMemoryAvailable);
        stringBuffer.append (To_Unbounded_String ("/"));
        stringBuffer.appendlong (Long_Long_Integer (Runtime_Package.getRuntime.maxMemory));
        stringBuffer.append (To_Unbounded_String (" Used: "));
        stringBuffer.appendlong (memoryUsed);
        stringBuffer.append (To_Unbounded_String (" Free: "));
        stringBuffer.appendlong ((maxUtilizedMemoryAvailable) - (memoryUsed));
        stringBuffer.append (To_Unbounded_String ("/"));
        stringBuffer.appendlong (Long_Long_Integer ((Runtime_Package.getRuntime.maxMemory) - (memoryUsed)));
        return stringBuffer.toString;
   end getInfo;

end org.allbinary.system.Memory_Package;


