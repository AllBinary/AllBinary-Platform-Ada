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


with org.allbinary.emulator.InitEmulatorFactory_Package; use org.allbinary.emulator.InitEmulatorFactory_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package body org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package is

   package InitEmulatorFactory_Package renames Standard.org.allbinary.emulator.InitEmulatorFactory_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
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


   procedure onSurfaceCreated (This : in out EmulatorCustomRenderer; gl_Param : access GL10_Package.GL10'Class; eglConfig_Param : access EGLConfig_Package.EGLConfig'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      eglConfig : constant EGLConfig_Access := EGLConfig_Access (eglConfig_Param);
      initEmulatorFactory : InitEmulatorFactory_Access;
      WAIT_FOR_EMULATOR : Unbounded_String;
   begin
        This.logUtil.putF (This.commonStrings.START, EmulatorCustomRenderer_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED);
        initEmulatorFactory := InitEmulatorFactory_Package.getInstance;
        if not (initEmulatorFactory.isInitEmulator) then
            begin
                WAIT_FOR_EMULATOR := To_Unbounded_String ("Waiting on Emulator Initialization");
                while not (initEmulatorFactory.isInitEmulator) loop
                    PreLogUtil_Package.put (WAIT_FOR_EMULATOR, EmulatorCustomRenderer_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED);
                    Java_Sleep (180);
                end loop;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, EmulatorCustomRenderer_Access'(This'Unchecked_Access), This.renderStrings.ON_SURFACE_CREATED, e);
                    end;
            end;
        end if;
   end onSurfaceCreated;

end org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer_Package;


