.class Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/ColorPicker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->access$000(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->access$000(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onSettingsPressed()V

    :cond_0
    return-void
.end method
