.class Lorg/telegram/ui/ChannelIntroActivity$4;
.super Ljava/lang/Object;
.source "ChannelIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelIntroActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelIntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelIntroActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelIntroActivity$4;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "step"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelIntroActivity$4;->this$0:Lorg/telegram/ui/ChannelIntroActivity;

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ChannelIntroActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method
