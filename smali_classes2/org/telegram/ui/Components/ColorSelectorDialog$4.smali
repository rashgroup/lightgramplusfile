.class Lorg/telegram/ui/Components/ColorSelectorDialog$4;
.super Ljava/lang/Object;
.source "ColorSelectorDialog.java"

# interfaces
.implements Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorSelectorDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$4;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$4;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    # invokes: Lorg/telegram/ui/Components/ColorSelectorDialog;->colorChangedInternal(I)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$300(Lorg/telegram/ui/Components/ColorSelectorDialog;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog$4;->this$0:Lorg/telegram/ui/Components/ColorSelectorDialog;

    # getter for: Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->access$400(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    return-void
.end method
