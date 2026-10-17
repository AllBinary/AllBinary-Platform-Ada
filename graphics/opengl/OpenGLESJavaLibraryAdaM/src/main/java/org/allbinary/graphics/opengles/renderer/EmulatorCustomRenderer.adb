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


package body org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package is

   procedure Initialize_Fields (This : in out EmulatorCustomRenderer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.renderStrings := RendererStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out EmulatorCustomRenderer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return EmulatorCustomRenderer_Access is
      This : constant EmulatorCustomRenderer_Access := new EmulatorCustomRenderer;
   begin
      EmulatorCustomRenderer_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onSurfaceCreated (This : in out EmulatorCustomRenderer; gl : GL10_Access; eglConfig : EGLConfig_Access) is
      initEmulatorFactory : InitEmulatorFactory_Access;
      WAIT_FOR_EMULATOR : Unbounded_String;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.renderStrings.ON_SURFACE_CREATED);
        initEmulatorFactory := InitEmulatorFactory_Package.getInstance;
        if not (initEmulatorFactory.isInitEmulator) then
            begin
                WAIT_FOR_EMULATOR := To_Unbounded_String ("Waiting on Emulator Initialization");
                while not (initEmulatorFactory.isInitEmulator) loop
                    PreLogUtil_Package.put (WAIT_FOR_EMULATOR, This'Unchecked_Access, This.renderStrings.ON_SURFACE_CREATED);
                    Java_Sleep (180);
                end loop;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.renderStrings.ON_SURFACE_CREATED, e);
                    end;
            end;
        end if;
   end onSurfaceCreated;

end org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package;


