.class Lorg/telegram/ui/VoIPActivity$22$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$22;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$22$1;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$22$1;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$22$1;->this$1:Lorg/telegram/ui/VoIPActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    return-void
.end method
