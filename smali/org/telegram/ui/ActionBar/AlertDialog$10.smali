.class Lorg/telegram/ui/ActionBar/AlertDialog$10;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$10;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$10;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$10;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$10;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$10;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method
