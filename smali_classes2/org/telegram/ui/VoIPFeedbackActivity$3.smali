.class Lorg/telegram/ui/VoIPFeedbackActivity$3;
.super Ljava/lang/Object;
.source "VoIPFeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFeedbackActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPFeedbackActivity$3;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFeedbackActivity$3;->this$0:Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPFeedbackActivity;->finish()V

    return-void
.end method
