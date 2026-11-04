--  Generated Code Do Not Modify


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package body org.allbinary.animation.FillAnimation_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out FillAnimation'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out FillAnimation'Class; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.width := 100;
        This.height := 100;
        This.pixelBuffer := pixelBuffer;
   end Initialize;

   function Create (pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return FillAnimation_Access is
      This : constant FillAnimation_Access := new FillAnimation;
   begin
      FillAnimation_Package.Initialize (This.all, pixelBuffer, width, height, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out FillAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((FillAnimation'Class (This).getBasicColorP) = (null)) or else ((FillAnimation'Class (This).getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).setBasicColorP (basicColor);
        if changed then
            FillAnimation'Class (This).updateModifiers;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out FillAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((FillAnimation'Class (This).getChangeBasicColor) = (null)) or else ((FillAnimation'Class (This).getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).changeBasicColor (basicColor);
        if changed then
            FillAnimation'Class (This).updateModifiers;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out FillAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        IndexedAnimation_Package.IndexedAnimation (This).setAlpha (alpha);
        if changed then
            FillAnimation'Class (This).updateModifiers;
        end if;
   end setAlpha;

   procedure setScale (This : in out FillAnimation; scaleX : Float; scaleY : Float) is
   begin
        null;
   end setScale;

   procedure setMaxScale (This : in out FillAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        null;
   end setMaxScale;

   procedure updateModifiers (This : in out FillAnimation) is
   begin
        null;
   end updateModifiers;

   procedure paint (This : in out FillAnimation; g_Param : access Graphics_Package.Graphics'Class) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
   begin
        g.drawRGB (This.pixelBuffer, 0, This.width, 0, 0, This.width, This.height, True);
   end paint;

end org.allbinary.animation.FillAnimation_Package;


