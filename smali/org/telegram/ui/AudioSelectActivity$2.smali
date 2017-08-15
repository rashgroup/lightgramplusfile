.class Lorg/telegram/ui/AudioSelectActivity$2;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    check-cast p1, Lorg/telegram/ui/Cells/AudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AudioCell;->getAudioEntry()Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # invokes: Lorg/telegram/ui/AudioSelectActivity;->updateBottomLayoutCount()V
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$100(Lorg/telegram/ui/AudioSelectActivity;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$2;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/AudioCell;->setChecked(Z)V

    goto :goto_0
.end method
