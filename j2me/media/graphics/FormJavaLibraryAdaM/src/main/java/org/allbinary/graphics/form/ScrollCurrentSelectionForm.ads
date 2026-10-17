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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type ScrollCurrentSelectionForm is tagged;
   type ScrollCurrentSelectionForm_Access is access all ScrollCurrentSelectionForm'Class;
   type ScrollCurrentSelectionForm_Access_Array is array (Natural range <>) of ScrollCurrentSelectionForm_Access;
   type ScrollCurrentSelectionForm_Access_Array_Access is access all ScrollCurrentSelectionForm_Access_Array;

   type ScrollCurrentSelectionForm is new ScrollSelectionForm and UpdateMyFontInterface with record
      moveForSmallScreen : Boolean;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      processor : Processor_Access;
      preItemIndexDx : ItemIndexDx_Access;
      dx : Integer;
      dy : Integer;
      maxWidth : Integer;
   end record;

   procedure Initialize (This : in out ScrollCurrentSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollCurrentSelectionForm_Access;
   procedure init (This : in out ScrollCurrentSelectionForm; rectangle : Rectangle_Access; formType : FormType_Access);
   procedure updateMeasurement (This : in out ScrollCurrentSelectionForm; graphics : Graphics_Access);
   procedure processTempHorizontalForm (This : in out ScrollCurrentSelectionForm);
   procedure processHorizontalForm (This : in out ScrollCurrentSelectionForm);
   procedure processVerticalForm (This : in out ScrollCurrentSelectionForm);
   function getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);
   function getDiffX (This : in out ScrollCurrentSelectionForm; item : ABCustomItem_Access) return Integer;
   procedure getDiffX (This : in out ScrollCurrentSelectionForm; item : ABCustomItem_Access);
   function getDx (This : in out ScrollCurrentSelectionForm) return Integer;
   procedure getDx (This : in out ScrollCurrentSelectionForm);
   function getDy (This : in out ScrollCurrentSelectionForm) return Integer;
   procedure getDy (This : in out ScrollCurrentSelectionForm);
   procedure paint (This : in out ScrollCurrentSelectionForm; graphics : Graphics_Access);

end org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.TempHorizontalFormProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type TempHorizontalFormProcessor is tagged;
   type TempHorizontalFormProcessor_Access is access all TempHorizontalFormProcessor'Class;
   type TempHorizontalFormProcessor_Access_Array is array (Natural range <>) of TempHorizontalFormProcessor_Access;
   type TempHorizontalFormProcessor_Access_Array_Access is access all TempHorizontalFormProcessor_Access_Array;

   type TempHorizontalFormProcessor is new Processor with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out TempHorizontalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return TempHorizontalFormProcessor_Access;
   procedure process (This : in out TempHorizontalFormProcessor);

end org.allbinary.graphics.form.TempHorizontalFormProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.HorizontalFormProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type HorizontalFormProcessor is tagged;
   type HorizontalFormProcessor_Access is access all HorizontalFormProcessor'Class;
   type HorizontalFormProcessor_Access_Array is array (Natural range <>) of HorizontalFormProcessor_Access;
   type HorizontalFormProcessor_Access_Array_Access is access all HorizontalFormProcessor_Access_Array;

   type HorizontalFormProcessor is new Processor with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out HorizontalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return HorizontalFormProcessor_Access;
   procedure process (This : in out HorizontalFormProcessor);

end org.allbinary.graphics.form.HorizontalFormProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.VerticalFormProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type VerticalFormProcessor is tagged;
   type VerticalFormProcessor_Access is access all VerticalFormProcessor'Class;
   type VerticalFormProcessor_Access_Array is array (Natural range <>) of VerticalFormProcessor_Access;
   type VerticalFormProcessor_Access_Array_Access is access all VerticalFormProcessor_Access_Array;

   type VerticalFormProcessor is new Processor with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out VerticalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return VerticalFormProcessor_Access;
   procedure process (This : in out VerticalFormProcessor);

end org.allbinary.graphics.form.VerticalFormProcessor_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.TempHorizontalItemIndexDx_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type TempHorizontalItemIndexDx is tagged;
   type TempHorizontalItemIndexDx_Access is access all TempHorizontalItemIndexDx'Class;
   type TempHorizontalItemIndexDx_Access_Array is array (Natural range <>) of TempHorizontalItemIndexDx_Access;
   type TempHorizontalItemIndexDx_Access_Array_Access is access all TempHorizontalItemIndexDx_Access_Array;

   type TempHorizontalItemIndexDx is new ItemIndexDx with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out TempHorizontalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return TempHorizontalItemIndexDx_Access;
   function getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.TempHorizontalItemIndexDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.HorizontalItemIndexDx_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type HorizontalItemIndexDx is tagged;
   type HorizontalItemIndexDx_Access is access all HorizontalItemIndexDx'Class;
   type HorizontalItemIndexDx_Access_Array is array (Natural range <>) of HorizontalItemIndexDx_Access;
   type HorizontalItemIndexDx_Access_Array_Access is access all HorizontalItemIndexDx_Access_Array;

   type HorizontalItemIndexDx is new ItemIndexDx with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out HorizontalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return HorizontalItemIndexDx_Access;
   function getDx (This : in out HorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out HorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.HorizontalItemIndexDx_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.graphics.form.VerticalItemIndexDx_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;

   type VerticalItemIndexDx is tagged;
   type VerticalItemIndexDx_Access is access all VerticalItemIndexDx'Class;
   type VerticalItemIndexDx_Access_Array is array (Natural range <>) of VerticalItemIndexDx_Access;
   type VerticalItemIndexDx_Access_Array_Access is access all VerticalItemIndexDx_Access_Array;

   type VerticalItemIndexDx is new ItemIndexDx with record
      scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out VerticalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access);
   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return VerticalItemIndexDx_Access;
   function getDx (This : in out VerticalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out VerticalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.VerticalItemIndexDx_Package;


