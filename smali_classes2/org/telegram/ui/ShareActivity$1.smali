.class Lorg/telegram/ui/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ShareActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ShareActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ShareActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ShareActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ShareActivity$1;->this$0:Lorg/telegram/ui/ShareActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ShareActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/ShareActivity;->access$002(Lorg/telegram/ui/ShareActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
