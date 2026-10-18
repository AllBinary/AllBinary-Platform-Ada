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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.game.displayable.canvas.NullDisplayable_Package; use org.allbinary.game.displayable.canvas.NullDisplayable_Package;
with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package; use org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;

package body org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package GameInputMappingCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
   package GameInputMappingInstructionsCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
   package NullDisplayable_Package renames Standard.org.allbinary.game.displayable.canvas.NullDisplayable_Package;
   package NullWaitGameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CurrentDisplayableFactory'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.SET_DISPLAYABLE := To_Unbounded_String ("setDisplayable");
      This.SET_RUNNABLE := To_Unbounded_String ("setRunnable");
      This.CLEAR_RUNNABLE := To_Unbounded_String ("clearRunnable");
      This.SET_USED_RUNNABLE := To_Unbounded_String ("setUsedRunnable");
      This.RUNNABLE := To_Unbounded_String ("Runnable: ");
      This.RUNNABLE_WAS_ALREADY_IN_USE := To_Unbounded_String ("Runnable was already in use: ");
      This.DEFAULT_CHILD_NAME_LIST := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.displayable := NullDisplayable_Package.getInstance;
      This.openGlReadydisplayable := NullDisplayable_Package.getInstance;
      This.runnable_Case := NullWaitGameRunnable_Package.getInstance;
      This.usedRunnable := NullWaitGameRunnable_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CurrentDisplayableFactory_Access is
   begin
        return CurrentDisplayableFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CurrentDisplayableFactory'Class) is
   begin
      Initialize_Fields (This);
        This.DEFAULT_CHILD_NAME_LIST.add (This.canvasStrings.ABOUT);
        This.DEFAULT_CHILD_NAME_LIST.add (This.canvasStrings.OPTIONS);
        This.DEFAULT_CHILD_NAME_LIST.add (GameInputMappingCanvas_Package.NAME);
        This.DEFAULT_CHILD_NAME_LIST.add (GameInputMappingInstructionsCanvas_Package.NAME);
        This.DEFAULT_CHILD_NAME_LIST.add (HighScoresCanvas_Package.NAME);
   end Initialize;

   function Create return CurrentDisplayableFactory_Access is
      This : constant CurrentDisplayableFactory_Access := new CurrentDisplayableFactory;
   begin
      CurrentDisplayableFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setMyCanvas (This : in out CurrentDisplayableFactory; displayable_Param : access MyCanvas_Package.MyCanvas'Class) is
      displayable : constant MyCanvas_Access := MyCanvas_Access (displayable_Param);
   begin
        if (This.displayable.all in MyCanvas_Package.MyCanvas'Class) then
            if displayable.hasChild (MyCanvas_Access (This.displayable)) then
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Child Displayable is already set for: ")).append (This.stringUtil.toString (displayable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_DISPLAYABLE);
                return;
            end if;
        end if;
        CurrentDisplayableFactory'Class (This).setDisplayable (displayable);
   end setMyCanvas;

   procedure setDisplayable (This : in out CurrentDisplayableFactory; displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        This.displayable := displayable;
        CurrentDisplayableFactory'Class (This).setOpenGlReadydisplayable (displayable);
   end setDisplayable;

   procedure setOpenGlReadydisplayable (This : in out CurrentDisplayableFactory; openGlReadydisplayable_Param : access Displayable_Package.Displayable'Class) is
      openGlReadydisplayable : constant Displayable_Access := Displayable_Access (openGlReadydisplayable_Param);
   begin
        This.openGlReadydisplayable := openGlReadydisplayable;
        CurrentDisplayableFactory'Class (This).update;
   end setOpenGlReadydisplayable;

   function getOpenGlReadydisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access is
   begin
        return This.openGlReadydisplayable;
   end getOpenGlReadydisplayable;

   procedure setRunnable (This : in out CurrentDisplayableFactory; runnable_Param : access GameRunnable_Package.GameRunnable'Class) is
      runnable : constant GameRunnable_Access := GameRunnable_Access (runnable_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (runnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_RUNNABLE);
        This.runnable_Case := runnable;
        if (This.usedRunnable) /= (This.runnable_Case) then
            CurrentDisplayableFactory'Class (This).update;
        else
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE_WAS_ALREADY_IN_USE).append (This.stringUtil.toString (runnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_RUNNABLE);
        end if;
   end setRunnable;

   procedure clearRunnable (This : in out CurrentDisplayableFactory) is
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.CLEAR_RUNNABLE);
        CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
   end clearRunnable;

   procedure update (This : in out CurrentDisplayableFactory) is
      commonSeps : CommonSeps_Access;
      features : Features_Access;
      stringMaker : StringMaker_Access;
   begin
        begin  --  synchronized
            commonSeps := CommonSeps_Package.getInstance;
            features := Features_Package.getInstance;
            stringMaker := StringMaker_Package.Create;
            stringMaker.append (This.stringUtil.toString (This.openGlReadydisplayable));
            if (SWTUtil_Package.isSWT) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (SWTUtil_Package.SWT).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
            elsif J2MEUtil_Package.isHTML then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (GraphicsStrings_Package.getInstance.HTML).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (This.runnable_Case);
            elsif (((This.openGlReadydisplayable.all in DemoCanvas_Package.DemoCanvas'Class)) or else ((This.openGlReadydisplayable.all in AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class))) or else (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL)) then
                PreLogUtil_Package.put (stringMaker.append (commonSeps.SPACE).append (OpenGLFeatureFactory_Package.getInstance.OPENGL.toString).append (commonSeps.SPACE).append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (This.runnable_Case);
            else
                PreLogUtil_Package.put (stringMaker.append (This.RUNNABLE).append (This.stringUtil.toString (NullRunnable_Package.getInstance)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                CurrentDisplayableFactory'Class (This).setUsedRunnable (NullWaitGameRunnable_Package.getInstance);
            end if;
        end;
   end update;

   function getDisplayable (This : in out CurrentDisplayableFactory) return Displayable_Access is
   begin
        return This.displayable;
   end getDisplayable;

   function getUsedRunnable (This : in out CurrentDisplayableFactory) return GameRunnable_Access is
   begin
        return This.usedRunnable;
   end getUsedRunnable;

   procedure setUsedRunnable (This : in out CurrentDisplayableFactory; usedRunnable_Param : access GameRunnable_Package.GameRunnable'Class) is
      usedRunnable : constant GameRunnable_Access := GameRunnable_Access (usedRunnable_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.RUNNABLE).append (This.stringUtil.toString (This.runnable_Case)).append (CommonSeps_Package.getInstance.COLON_SEP).append (This.stringUtil.toString (usedRunnable)).toString, CurrentDisplayableFactory_Access'(This'Unchecked_Access), This.SET_USED_RUNNABLE);
        This.usedRunnable := usedRunnable;
   end setUsedRunnable;

begin
   null;
   instance := CurrentDisplayableFactory_Package.Create;

end org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;


