.class public abstract Lorg/telegram/messenger/support/util/SortedList$Callback;
.super Ljava/lang/Object;
.source "SortedList.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lorg/telegram/messenger/support/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT2;>;",
        "Lorg/telegram/messenger/support/util/ListUpdateCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation
.end method

.method public abstract onChanged(II)V
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onChanged(II)V

    return-void
.end method
