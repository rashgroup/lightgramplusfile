.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
.super Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDuration:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJLjava/util/List;ZJIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    iput-wide p11, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    move/from16 v0, p13

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    move/from16 v0, p14

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    return-void

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    :goto_0
    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v4, v5, 0x80

    if-eqz v4, :cond_3

    const/16 v17, 0x1

    :goto_1
    and-int/lit8 v4, v5, 0x40

    if-eqz v4, :cond_4

    const/16 v16, 0x1

    :goto_2
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move/from16 v19, v4

    :goto_3
    and-int/lit8 v4, v5, 0x10

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    :goto_4
    if-eqz v16, :cond_0

    if-nez v15, :cond_0

    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v12

    :cond_0
    if-nez v16, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v20

    new-instance v14, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v21

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v15, :cond_1

    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v4

    :cond_1
    new-instance v22, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJLorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_5

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    int-to-long v10, v4

    const-wide/16 v4, 0x80

    and-long/2addr v4, v10

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_6
    const-wide/16 v18, 0x1

    and-long v10, v10, v18

    const/16 v5, 0x20

    shl-long/2addr v10, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v18

    or-long v10, v10, v18

    move v9, v4

    move-wide v4, v10

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v20

    move v11, v15

    move/from16 v10, v16

    move v15, v9

    move/from16 v9, v17

    move-wide/from16 v16, v4

    :goto_8
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    invoke-direct/range {v5 .. v20}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJLjava/util/List;ZJIII)V

    return-object v5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    move-wide v4, v10

    goto :goto_7

    :cond_a
    move-wide/from16 v16, v10

    move v11, v4

    move v10, v5

    move/from16 v24, v9

    move v9, v15

    move/from16 v15, v24

    goto :goto_8
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    if-eqz v0, :cond_5

    :goto_5
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_5
    move v1, v2

    goto :goto_5
.end method
