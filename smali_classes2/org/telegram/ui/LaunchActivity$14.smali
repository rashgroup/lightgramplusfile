.class Lorg/telegram/ui/LaunchActivity$14;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$14;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$1602(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method
