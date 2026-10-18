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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.LaptopGameInputMapping_Package; use org.allbinary.game.input.LaptopGameInputMapping_Package;

package body org.allbinary.game.input.PlatformInputMappingFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PlatformInputMappingFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.inputToGameKeyMapping := PersistentInputMapping_Package.getNullInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformInputMappingFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformInputMappingFactory_Access is
      This : constant PlatformInputMappingFactory_Access := new PlatformInputMappingFactory;
   begin
      PlatformInputMappingFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformInputMappingFactory_Access is
   begin
        return PlatformInputMappingFactory_Package.instance;
   end getInstance;

   function getPersistentInputMappingInstance (This : in out PlatformInputMappingFactory) return PersistentInputMapping_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.inputToGameKeyMapping) = (PersistentInputMapping_Package.getNullInstance) then
                This.inputToGameKeyMapping := PersistentInputMapping_Access (LaptopGameInputMapping_Package.Create);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, PlatformInputMappingFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
                end;
        end;
        return This.inputToGameKeyMapping;
   end getPersistentInputMappingInstance;

begin
   null;
   instance := PlatformInputMappingFactory_Package.Create;

end org.allbinary.game.input.PlatformInputMappingFactory_Package;


